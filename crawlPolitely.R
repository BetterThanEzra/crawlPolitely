library(httr)

# # Approach #1 (The MOST Polite)
#  - SLOW DOWN YOUR BASIC CRAWL- 

download_on_timer <- function(){

        for (i in 31:35){
        
                newUrl <- paste("https://www.amazon.com/s/ref=sr_pg_2?fst=as%3Aon&rh=n%3A7141123011%2Ck%3Ashirt&page=", i, "&keywords=shirt", sep = "")
        
                saveName <- paste("search_page_", i, ".html", sep = "")
        
                grHTML <- GET(newUrl) # retreive html into memory
        
                bin <- content(grHTML, "raw") #httr will read raw bytes from source 
        
                writeBin(bin, saveName) # now write to file
        
                #set time
                ttime <- abs(rnorm(1, 3, 1)) #honstly this is probably unessesary, but it adds a little variation.
                #ttime <- 3 #likely sufficient. Play around to see how the server you're working with reacts.
                
                #set expectation
                print(paste("waiting ", ttime, " seconds", sep = ""))
                
                #Now wait just a sec...
                Sys.sleep(ttime)
                
        }       
}



# # Approach #2 (Less Polite)
#  - Identify Yourself Differently -
#  This can also be a handy way to retrieve mobile versions of web pages.
#  For a non-definative list of user agents from many different device types, check out:
#  https://deviceatlas.com/blog/list-of-user-agent-strings


change_user_agent <- function(){
      
        # Standard User Agent
        
        #the following website displays your user adgent
        newUrl <- "http://displaymyip.com/"
        
        grHTML <- GET(newUrl)
        
        grName <- paste("basic_user_agent.html")
        
        bin <- content(grHTML, "raw") #httr will read raw bytes from source 
        
        writeBin(bin, grName)
        
        print("Saved basic example file.")
        
        viewer <- getOption("viewer")
        
        viewer("basic_user_agent.html")
        
        # UPDATED User Agent
        
                agentName <- "This is a modified user agent used by my bot. If you would prefer your wibsite not be scraped, please reach me at polite@scraper.com"
        
                grHTML <- GET(newUrl, user_agent(agentName))
        
                grName <- paste("modified_user_agent.html")
        
                bin <- content(grHTML, "raw") #httr will read raw bytes from source 
                
                writeBin(bin, grName)
        
                print("Saved basic file with new user agent.")
        
                viewer("modified_user_agent.html")
        
}




# # Approach #3 (Least Polite)
#  - Identify Yourself differently -


rotate_ip <- function(){
        
        newagent <- "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"
        
        # AS before
        
                newUrl <- "http://www.displaymyip.com"
        
                grHTML <- GET(newUrl, user_agent(agentName))
        
                grName <- paste("initial_IP.html")
                
                bin <- content(grHTML, "raw") #httr will read raw bytes from source 
        
                writeBin(bin, grName)
        
                print("Saved basic example file.")
                
                viewer("initial_IP.html")


        # Practice some patience        
                
                ttime <- abs(rnorm(1, 3, 1)) # rnorm( vector quantity, mean, sd)
                print(paste("waiting ", ttime, " seconds", sep = ""))
                Sys.sleep(ttime)
    
        
      #get new IP
                
                #open the following page and select a proxy that is fresh and secure
                #this can be done via scraping, but that's for another day
                browseURL("https://www.us-proxy.org/")
                
                #manually enter selected proxy and port from page above
                proxyIP <- "66.254.177.146"
                proxyPort <- "3128"
                
                #confirm that proxy is live.
                system2("ping", proxyIP)     
                
                proxyName <- paste("http://", proxyIP, ":", proxyPort, sep="") 
                        
                Sys.setenv(http_proxy=proxyName) #set environemental variable      
                
                grHTML <- GET(newUrl, user_agent(agentName))     
                
                grName <- paste("rotated_IP.html")
                        
                bin <- content(grHTML, "raw") #httr will read raw bytes from source 
                        
                writeBin(bin, grName)
                        
                print("Saved basic file with rotated IP.")
                        
                viewer("rotated_IP.html")                       
        
}
