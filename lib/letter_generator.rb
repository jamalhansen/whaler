require 'prawn'

module Whaler
  class LetterGenerator
    def generate customers, storage_service
      customers.each do |customer|
        output_file = storage_service.path_and_filename customer
        Prawn::Document.generate(output_file, :left_margin => 100, :right_margin => 100, :top_margin => 100, :bottom_margin => 100) do |pdf|
          header_for pdf, customer
          skip 3 , pdf
          body_for pdf, customer
          skip 12 , pdf
          footer_for pdf
        end
      end
    end

    def header_for pdf, customer
      pdf.image(File.join("images", "whaler_logo.jpg"), :width => 150)
      skip 3 , pdf
      pdf.text todays_date
      skip 2 , pdf
      pdf.text address_for customer
    end

    def body_for pdf, customer
      pdf.font "Times-Roman"
      pdf.text greet customer
      skip 3 , pdf
      pdf.text "We here at Whaler Corp are extremely grateful for your #{customer.order_count} orders that you have made in the past."
      skip 1 , pdf
      pdf.text "Because of this, we would like to extend to you a special offer on #{customer.favorite_item}."
      skip 1 , pdf
      pdf.text "Right now, if you order more than $#{customer.average_order_amount} we include a free #{customer.favorite_item}."
      skip 1 , pdf
      pdf.text "We look forward to taking your money, processing your order and making you happy soon."
    end

    def footer_for pdf
      pdf.font "Courier-Bold", :size => 8
      pdf.text "Whaler Corp, 123456 Example Plaza, Suite 53, Everville, Nv, 34563-3223"
    end

    def format_date date
      date.strftime("%A, %B %d, %Y")
    end

    def todays_date
      format_date Time.now
    end

    def address_for customer
      "#{customer.first_name} #{customer.last_name}
#{customer.street_address}
#{customer.city}, #{customer.state} #{customer.zip_code}"
    end

    def greet person
      "Dear #{person.first_name},\r\n"
    end
    
    def skip count, pdf
      count.times do
        pdf.text "\r\n"
      end
    end
  end
end
