class SiteZAccessLog < SiteZRecord
  self.table_name = "access_log"

  def self.update_read_log(record)
    if record.class != SiteZAccessLog
      CentralAccessLog.create(site_id: record.id, rw: 0, fragment_id: 2, volume: 1)
    end
  end

  def self.update_write_log(record)
    if record.class != SiteZAccessLog
      CentralAccessLog.create(site_id: record.id, rw: 1, fragment_id: 2, volume: 1)
    end
  end

end
