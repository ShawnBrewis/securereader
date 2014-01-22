package info.guardianproject.yakreader.adapters;

import java.util.ArrayList;

import android.content.Context;
import info.guardianproject.yakreader.R;
import com.tinymission.rss.Item;

public class PostOutgoingListAdapter extends PostPublishedListAdapter
{
	public PostOutgoingListAdapter(Context context, ArrayList<Item> posts)
	{
		super(context, posts);
		setHeaderView(R.layout.post_list_no_outgoing, true);
	}
}
