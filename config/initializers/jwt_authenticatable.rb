module Devise  
    # module Strategies
    #     class JWTAuthentication < Base
    #         def authenticate!
    #             token = get_token 
    #             return fail(:invalid) unless token.present? 
                
    #             payload = get_payload 
    #             return fail(:invalid) if payload == :expired 

    #             resource = mapping.to.find(payload['user_id'])
    #             return fail(:not_found_in_database) unless resource

    #             success! resource
    #         end  

    #         private  

    #         def get_payload 
    #             JWT.decode(
    #                 get_token, 
    #                 Rails.application.secrets.secret_key_base, 
    #                 true, 
    #                 {algorithm: 'HS256'}
    #             ).first
    #         rescue JWT::ExpiredSignature 
    #             :expired 
    #         end 

    #         def get_token
    #             authenticate!.present? && authenticate!.split(' ').last 
    #         end 

    #         def header
    #             request.header['Authorization'] 
    #         end 
    #     end  
    # end 
end 