package edu.graduate.biteOfTianJin.basic;

import java.sql.SQLException;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;

import edu.graduate.biteOfTianJin.domain.entity.Shop;

public class SqliteHelper extends OrmLiteSqliteOpenHelper {
	private static final String DATABASE_NAME = "HelloOrmlite.db";
	private static final int DATABASE_VERSION = 2;
	private Dao<Shop, Integer> helloDao = null;

	public SqliteHelper(Context context) {
		super(context, DATABASE_NAME, null, DATABASE_VERSION);
	}

	@Override
	public void onCreate(SQLiteDatabase db, ConnectionSource connectionSource) {
		try {
			TableUtils.createTable(connectionSource, Shop.class);
		} catch (SQLException e) {
			Log.e(SqliteHelper.class.getName(), "创建数据库失败", e);
			e.printStackTrace();
		}
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, ConnectionSource connectionSource,
			int arg2, int arg3) {
		try {
			TableUtils.dropTable(connectionSource, Shop.class, true);
			onCreate(db, connectionSource);
		} catch (SQLException e) {
			Log.e(SqliteHelper.class.getName(), "更新数据库失败", e);
			e.printStackTrace();
		}
	}

	@Override
	public void close() {
		super.close();
		helloDao = null;
	}

	public Dao<Shop, Integer> getHelloDataDao() throws SQLException {
		if (helloDao == null) {
			helloDao = getDao(Shop.class);
		}
		return helloDao;
	}
}