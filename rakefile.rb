require 'combine_pdf'

namespace :pdf do
  desc "Merge PDF files in current directory in alphabetical order"
  task :merge do
    pdf = CombinePDF.new
    files = Dir.glob("./*.pdf")
    files.each do |file|
      pdf << CombinePDF.load(file)
    end
    pdf.save 'combined_pdf_files.pdf'
    puts 'PDFs merged successfully!'
  end
end