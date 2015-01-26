using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicDolphin
{
    class ReviewRepository
    {
        MDEntities db = new MDEntities();

        public List<Review> GetAllReviews()
        {
            return db.Review.ToList();
        }

        public List<Review> getMatchingReviewsLabel(int idToMatch)
        {
            List<Review> matchingReviews = new List<Review>();

            foreach (Review r in db.Review)
            {
                if (r.companyNr == idToMatch)
                {
                    matchingReviews.Add(r);
                }
            }
            return matchingReviews;
        }
    }
}
