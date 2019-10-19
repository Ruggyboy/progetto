class User < ApplicationRecord

    #before_save { email.downcase! }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

    #before_create :create_activation_digest

    #devise :database_authenticatable, :registerable,
    #    :recoverable, :rememberable, :trackable, :validatable,
    #    :omniauthable, :omniauth_providers => [:facebook]

    devise :rememberable, :omniauthable, omniauth_providers: [:google_oauth2]

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    validates :name,  presence: true
    validates :email, presence: true

    attr_accessor :remember_token, :activation_token, :reset_token

  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest,  User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end


    def send_password_reset_email
        UserMailer.password_reset(self).deliver_now
    end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
        if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
            user.email = data["email"] if user.email.blank?
        end
    end
  end
end
