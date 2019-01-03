
require 'csv'
# user_data = CSV.read('user_class_data.csv')
# car_data = CSV.read('car_class_data.csv')
# review_data = CSV.read('review_class_data.csv')

# CSV.foreach("./db/pm-cli-data-2.csv") do |row|
#     unit_number = row[0]
#     unit_bedrooms = row[1]
#     unit_square_feet = row[2]
#     unit_base_rent = row[3]
#     tenant_first = row[4]
#     tenant_last = row[5]
#     tenant_age = row[6]
#     tenant_credit = row[7]
#     lease_start = Date.parse(row[8])
#     lease_length = row[9]
#     tenant = Tenant.find_by(first_name: tenant_first, last_name: tenant_last)
#     if !tenant
#         tenant = Tenant.create(first_name: tenant_first, last_name: tenant_last, credit_score: tenant_credit, age: tenant_age)
#     end
#     unit = Unit.find_by(unit_number: unit_number)
#     if !unit
#         unit = Unit.create(unit_number: unit_number, base_rent: unit_base_rent, bedrooms: unit_bedrooms, square_feet: unit_square_feet)
#     end
#     lease = Lease.create(unit: unit, tenant: tenant, start_date: lease_start, length: lease_length, monthly_rent: unit.base_rent)
# end


    CSV.foreach("./db/user_class_data.csv") do |row|
        user_name = row[1]
        user = User.find_by(name: user_name)
        if !user
            user = User.create(name: user_name)
        end
    end

    # CSV.foreach("./db/review_class_data.csv") do |row|
    #     puts row.inspect
    # end

    # CSV.foreach("./db/user_class_data.csv") do |row|
    #     puts row.inspect
    # end
