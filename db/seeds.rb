listing_data = [
  {city: 'Seattle', description: 'Seattle has something to offer everyone. You can spend time on the water or hiking and the mountains are not far away. If you want entertainment, Seattle has a vibrant theatre community and plenty of nightlife to satisfy any appetite.'},
  {city: 'Bellevue', description: 'Check out the East side for a change of pace from Seattle. With everything Seattle has to offer without the congestion and traffic problems. There are plenty of outdoor activities and entertainment options to keep you busy.'}
]

listing_data.each do |listing|
  Listing.create(listing)
end
