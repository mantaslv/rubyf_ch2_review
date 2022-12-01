def valid?(password)
    password.length > 7 && password.count("!@$%&") > 0
end

class PasswordManager
    def initialize
        #initialize empty hash ready to store data
        @password_data = {}
    end
    def add(service, password)
        #add service (key) and corresponding password (value) to hash
        valid?(password) ? @password_data[service] = password : "password is not valid"
    end
    def services
        #return list of the services (keys) saved in the hash
        @password_data.keys
    end
    def password_for(service)
        #return password (value) for the service (key) given
        @password_data[service]
    end
end
