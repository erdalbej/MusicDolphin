using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicDolphin
{
    class RecordRepository
    {
        MDEntities db = new MDEntities();

        public RecordLabel getRecordLabel(int companyNr)
        {
            return db.RecordLabel.Find(companyNr);
        }
    }
}
