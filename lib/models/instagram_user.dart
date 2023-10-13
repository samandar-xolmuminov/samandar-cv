// To parse this JSON data, do
//
//     final instagramUser = instagramUserFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

InstagramUser instagramUserFromJson(String str) => InstagramUser.fromJson(json.decode(str));

String instagramUserToJson(InstagramUser data) => json.encode(data.toJson());

class InstagramUser {
  final List<List<String>> seoCategoryInfos;
  final String loggingPageId;
  final bool showSuggestedProfiles;
  final Graphql graphql;
  final dynamic toastContentOnLoad;
  final bool showQrModal;
  final bool showViewShop;

  InstagramUser({
    required this.seoCategoryInfos,
    required this.loggingPageId,
    required this.showSuggestedProfiles,
    required this.graphql,
    required this.toastContentOnLoad,
    required this.showQrModal,
    required this.showViewShop,
  });

  factory InstagramUser.fromJson(Map<String, dynamic> json) => InstagramUser(
    seoCategoryInfos: List<List<String>>.from(json["seo_category_infos"].map((x) => List<String>.from(x.map((x) => x)))),
    loggingPageId: json["logging_page_id"],
    showSuggestedProfiles: json["show_suggested_profiles"],
    graphql: Graphql.fromJson(json["graphql"]),
    toastContentOnLoad: json["toast_content_on_load"],
    showQrModal: json["show_qr_modal"],
    showViewShop: json["show_view_shop"],
  );

  Map<String, dynamic> toJson() => {
    "seo_category_infos": List<dynamic>.from(seoCategoryInfos.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "logging_page_id": loggingPageId,
    "show_suggested_profiles": showSuggestedProfiles,
    "graphql": graphql.toJson(),
    "toast_content_on_load": toastContentOnLoad,
    "show_qr_modal": showQrModal,
    "show_view_shop": showViewShop,
  };
}

class Graphql {
  final GraphqlUser user;

  Graphql({
    required this.user,
  });

  factory Graphql.fromJson(Map<String, dynamic> json) => Graphql(
    user: GraphqlUser.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
  };
}

class GraphqlUser {
  final dynamic aiAgentType;
  final String biography;
  final List<BioLink> bioLinks;
  final FbProfileBiolink fbProfileBiolink;
  final BiographyWithEntities biographyWithEntities;
  final bool blockedByViewer;
  final bool restrictedByViewer;
  final bool countryBlock;
  final String eimuId;
  final dynamic externalUrl;
  final dynamic externalUrlLinkshimmed;
  final EdgeFollowClass edgeFollowedBy;
  final String fbid;
  final bool followedByViewer;
  final EdgeFollowClass edgeFollow;
  final bool followsViewer;
  final String fullName;
  final dynamic groupMetadata;
  final bool hasArEffects;
  final bool hasClips;
  final bool hasGuides;
  final bool hasChannel;
  final bool hasBlockedViewer;
  final int highlightReelCount;
  final bool hasRequestedViewer;
  final bool hideLikeAndViewCounts;
  final String id;
  final bool isBusinessAccount;
  final bool isProfessionalAccount;
  final bool isSupervisionEnabled;
  final bool isGuardianOfViewer;
  final bool isSupervisedByViewer;
  final bool isSupervisedUser;
  final bool isEmbedsDisabled;
  final bool isJoinedRecently;
  final dynamic guardianId;
  final dynamic businessAddressJson;
  final String businessContactMethod;
  final dynamic businessEmail;
  final dynamic businessPhoneNumber;
  final dynamic businessCategoryName;
  final dynamic overallCategoryName;
  final dynamic categoryEnum;
  final dynamic categoryName;
  final bool isPrivate;
  final bool isVerified;
  final bool isVerifiedByMv4B;
  final bool isRegulatedC18;
  final EdgeMutualFollowedBy edgeMutualFollowedBy;
  final int pinnedChannelsListCount;
  final String profilePicUrl;
  final String profilePicUrlHd;
  final bool requestedByViewer;
  final bool shouldShowCategory;
  final bool shouldShowPublicContacts;
  final bool showAccountTransparencyDetails;
  final dynamic transparencyLabel;
  final String transparencyProduct;
  final String username;
  final dynamic connectedFbPage;
  final List<dynamic> pronouns;
  final EdgeFelixCombinedDraftUploadsClass edgeFelixCombinedPostUploads;
  final EdgeFelixCombinedDraftUploadsClass edgeFelixCombinedDraftUploads;
  final EdgeFelixCombinedDraftUploadsClass edgeFelixVideoTimeline;
  final EdgeFelixCombinedDraftUploadsClass edgeFelixDrafts;
  final EdgeFelixCombinedDraftUploadsClass edgeFelixPendingPostUploads;
  final EdgeFelixCombinedDraftUploadsClass edgeFelixPendingDraftUploads;
  final EdgeFelixCombinedDraftUploadsClass edgeOwnerToTimelineMedia;
  final EdgeFelixCombinedDraftUploadsClass edgeSavedMedia;
  final EdgeFelixCombinedDraftUploadsClass edgeMediaCollections;

  GraphqlUser({
    required this.aiAgentType,
    required this.biography,
    required this.bioLinks,
    required this.fbProfileBiolink,
    required this.biographyWithEntities,
    required this.blockedByViewer,
    required this.restrictedByViewer,
    required this.countryBlock,
    required this.eimuId,
    required this.externalUrl,
    required this.externalUrlLinkshimmed,
    required this.edgeFollowedBy,
    required this.fbid,
    required this.followedByViewer,
    required this.edgeFollow,
    required this.followsViewer,
    required this.fullName,
    required this.groupMetadata,
    required this.hasArEffects,
    required this.hasClips,
    required this.hasGuides,
    required this.hasChannel,
    required this.hasBlockedViewer,
    required this.highlightReelCount,
    required this.hasRequestedViewer,
    required this.hideLikeAndViewCounts,
    required this.id,
    required this.isBusinessAccount,
    required this.isProfessionalAccount,
    required this.isSupervisionEnabled,
    required this.isGuardianOfViewer,
    required this.isSupervisedByViewer,
    required this.isSupervisedUser,
    required this.isEmbedsDisabled,
    required this.isJoinedRecently,
    required this.guardianId,
    required this.businessAddressJson,
    required this.businessContactMethod,
    required this.businessEmail,
    required this.businessPhoneNumber,
    required this.businessCategoryName,
    required this.overallCategoryName,
    required this.categoryEnum,
    required this.categoryName,
    required this.isPrivate,
    required this.isVerified,
    required this.isVerifiedByMv4B,
    required this.isRegulatedC18,
    required this.edgeMutualFollowedBy,
    required this.pinnedChannelsListCount,
    required this.profilePicUrl,
    required this.profilePicUrlHd,
    required this.requestedByViewer,
    required this.shouldShowCategory,
    required this.shouldShowPublicContacts,
    required this.showAccountTransparencyDetails,
    required this.transparencyLabel,
    required this.transparencyProduct,
    required this.username,
    required this.connectedFbPage,
    required this.pronouns,
    required this.edgeFelixCombinedPostUploads,
    required this.edgeFelixCombinedDraftUploads,
    required this.edgeFelixVideoTimeline,
    required this.edgeFelixDrafts,
    required this.edgeFelixPendingPostUploads,
    required this.edgeFelixPendingDraftUploads,
    required this.edgeOwnerToTimelineMedia,
    required this.edgeSavedMedia,
    required this.edgeMediaCollections,
  });

  factory GraphqlUser.fromJson(Map<String, dynamic> json) => GraphqlUser(
    aiAgentType: json["ai_agent_type"],
    biography: json["biography"],
    bioLinks: List<BioLink>.from(json["bio_links"].map((x) => BioLink.fromJson(x))),
    fbProfileBiolink: FbProfileBiolink.fromJson(json["fb_profile_biolink"]),
    biographyWithEntities: BiographyWithEntities.fromJson(json["biography_with_entities"]),
    blockedByViewer: json["blocked_by_viewer"],
    restrictedByViewer: json["restricted_by_viewer"],
    countryBlock: json["country_block"],
    eimuId: json["eimu_id"],
    externalUrl: json["external_url"],
    externalUrlLinkshimmed: json["external_url_linkshimmed"],
    edgeFollowedBy: EdgeFollowClass.fromJson(json["edge_followed_by"]),
    fbid: json["fbid"],
    followedByViewer: json["followed_by_viewer"],
    edgeFollow: EdgeFollowClass.fromJson(json["edge_follow"]),
    followsViewer: json["follows_viewer"],
    fullName: json["full_name"],
    groupMetadata: json["group_metadata"],
    hasArEffects: json["has_ar_effects"],
    hasClips: json["has_clips"],
    hasGuides: json["has_guides"],
    hasChannel: json["has_channel"],
    hasBlockedViewer: json["has_blocked_viewer"],
    highlightReelCount: json["highlight_reel_count"],
    hasRequestedViewer: json["has_requested_viewer"],
    hideLikeAndViewCounts: json["hide_like_and_view_counts"],
    id: json["id"],
    isBusinessAccount: json["is_business_account"],
    isProfessionalAccount: json["is_professional_account"],
    isSupervisionEnabled: json["is_supervision_enabled"],
    isGuardianOfViewer: json["is_guardian_of_viewer"],
    isSupervisedByViewer: json["is_supervised_by_viewer"],
    isSupervisedUser: json["is_supervised_user"],
    isEmbedsDisabled: json["is_embeds_disabled"],
    isJoinedRecently: json["is_joined_recently"],
    guardianId: json["guardian_id"],
    businessAddressJson: json["business_address_json"],
    businessContactMethod: json["business_contact_method"],
    businessEmail: json["business_email"],
    businessPhoneNumber: json["business_phone_number"],
    businessCategoryName: json["business_category_name"],
    overallCategoryName: json["overall_category_name"],
    categoryEnum: json["category_enum"],
    categoryName: json["category_name"],
    isPrivate: json["is_private"],
    isVerified: json["is_verified"],
    isVerifiedByMv4B: json["is_verified_by_mv4b"],
    isRegulatedC18: json["is_regulated_c18"],
    edgeMutualFollowedBy: EdgeMutualFollowedBy.fromJson(json["edge_mutual_followed_by"]),
    pinnedChannelsListCount: json["pinned_channels_list_count"],
    profilePicUrl: json["profile_pic_url"],
    profilePicUrlHd: json["profile_pic_url_hd"],
    requestedByViewer: json["requested_by_viewer"],
    shouldShowCategory: json["should_show_category"],
    shouldShowPublicContacts: json["should_show_public_contacts"],
    showAccountTransparencyDetails: json["show_account_transparency_details"],
    transparencyLabel: json["transparency_label"],
    transparencyProduct: json["transparency_product"],
    username: json["username"],
    connectedFbPage: json["connected_fb_page"],
    pronouns: List<dynamic>.from(json["pronouns"].map((x) => x)),
    edgeFelixCombinedPostUploads: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_felix_combined_post_uploads"]),
    edgeFelixCombinedDraftUploads: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_felix_combined_draft_uploads"]),
    edgeFelixVideoTimeline: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_felix_video_timeline"]),
    edgeFelixDrafts: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_felix_drafts"]),
    edgeFelixPendingPostUploads: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_felix_pending_post_uploads"]),
    edgeFelixPendingDraftUploads: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_felix_pending_draft_uploads"]),
    edgeOwnerToTimelineMedia: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_owner_to_timeline_media"]),
    edgeSavedMedia: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_saved_media"]),
    edgeMediaCollections: EdgeFelixCombinedDraftUploadsClass.fromJson(json["edge_media_collections"]),
  );

  Map<String, dynamic> toJson() => {
    "ai_agent_type": aiAgentType,
    "biography": biography,
    "bio_links": List<dynamic>.from(bioLinks.map((x) => x.toJson())),
    "fb_profile_biolink": fbProfileBiolink.toJson(),
    "biography_with_entities": biographyWithEntities.toJson(),
    "blocked_by_viewer": blockedByViewer,
    "restricted_by_viewer": restrictedByViewer,
    "country_block": countryBlock,
    "eimu_id": eimuId,
    "external_url": externalUrl,
    "external_url_linkshimmed": externalUrlLinkshimmed,
    "edge_followed_by": edgeFollowedBy.toJson(),
    "fbid": fbid,
    "followed_by_viewer": followedByViewer,
    "edge_follow": edgeFollow.toJson(),
    "follows_viewer": followsViewer,
    "full_name": fullName,
    "group_metadata": groupMetadata,
    "has_ar_effects": hasArEffects,
    "has_clips": hasClips,
    "has_guides": hasGuides,
    "has_channel": hasChannel,
    "has_blocked_viewer": hasBlockedViewer,
    "highlight_reel_count": highlightReelCount,
    "has_requested_viewer": hasRequestedViewer,
    "hide_like_and_view_counts": hideLikeAndViewCounts,
    "id": id,
    "is_business_account": isBusinessAccount,
    "is_professional_account": isProfessionalAccount,
    "is_supervision_enabled": isSupervisionEnabled,
    "is_guardian_of_viewer": isGuardianOfViewer,
    "is_supervised_by_viewer": isSupervisedByViewer,
    "is_supervised_user": isSupervisedUser,
    "is_embeds_disabled": isEmbedsDisabled,
    "is_joined_recently": isJoinedRecently,
    "guardian_id": guardianId,
    "business_address_json": businessAddressJson,
    "business_contact_method": businessContactMethod,
    "business_email": businessEmail,
    "business_phone_number": businessPhoneNumber,
    "business_category_name": businessCategoryName,
    "overall_category_name": overallCategoryName,
    "category_enum": categoryEnum,
    "category_name": categoryName,
    "is_private": isPrivate,
    "is_verified": isVerified,
    "is_verified_by_mv4b": isVerifiedByMv4B,
    "is_regulated_c18": isRegulatedC18,
    "edge_mutual_followed_by": edgeMutualFollowedBy.toJson(),
    "pinned_channels_list_count": pinnedChannelsListCount,
    "profile_pic_url": profilePicUrl,
    "profile_pic_url_hd": profilePicUrlHd,
    "requested_by_viewer": requestedByViewer,
    "should_show_category": shouldShowCategory,
    "should_show_public_contacts": shouldShowPublicContacts,
    "show_account_transparency_details": showAccountTransparencyDetails,
    "transparency_label": transparencyLabel,
    "transparency_product": transparencyProduct,
    "username": username,
    "connected_fb_page": connectedFbPage,
    "pronouns": List<dynamic>.from(pronouns.map((x) => x)),
    "edge_felix_combined_post_uploads": edgeFelixCombinedPostUploads.toJson(),
    "edge_felix_combined_draft_uploads": edgeFelixCombinedDraftUploads.toJson(),
    "edge_felix_video_timeline": edgeFelixVideoTimeline.toJson(),
    "edge_felix_drafts": edgeFelixDrafts.toJson(),
    "edge_felix_pending_post_uploads": edgeFelixPendingPostUploads.toJson(),
    "edge_felix_pending_draft_uploads": edgeFelixPendingDraftUploads.toJson(),
    "edge_owner_to_timeline_media": edgeOwnerToTimelineMedia.toJson(),
    "edge_saved_media": edgeSavedMedia.toJson(),
    "edge_media_collections": edgeMediaCollections.toJson(),
  };
}

class BioLink {
  final String title;
  final String lynxUrl;
  final String url;
  final String linkType;

  BioLink({
    required this.title,
    required this.lynxUrl,
    required this.url,
    required this.linkType,
  });

  factory BioLink.fromJson(Map<String, dynamic> json) => BioLink(
    title: json["title"],
    lynxUrl: json["lynx_url"],
    url: json["url"],
    linkType: json["link_type"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "lynx_url": lynxUrl,
    "url": url,
    "link_type": linkType,
  };
}

class BiographyWithEntities {
  final String rawText;
  final List<dynamic> entities;

  BiographyWithEntities({
    required this.rawText,
    required this.entities,
  });

  factory BiographyWithEntities.fromJson(Map<String, dynamic> json) => BiographyWithEntities(
    rawText: json["raw_text"],
    entities: List<dynamic>.from(json["entities"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "raw_text": rawText,
    "entities": List<dynamic>.from(entities.map((x) => x)),
  };
}

class EdgeFelixCombinedDraftUploadsClass {
  final int count;
  final PageInfo pageInfo;
  final List<EdgeFelixCombinedDraftUploadsEdge> edges;

  EdgeFelixCombinedDraftUploadsClass({
    required this.count,
    required this.pageInfo,
    required this.edges,
  });

  factory EdgeFelixCombinedDraftUploadsClass.fromJson(Map<String, dynamic> json) => EdgeFelixCombinedDraftUploadsClass(
    count: json["count"],
    pageInfo: PageInfo.fromJson(json["page_info"]),
    edges: List<EdgeFelixCombinedDraftUploadsEdge>.from(json["edges"].map((x) => EdgeFelixCombinedDraftUploadsEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "page_info": pageInfo.toJson(),
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class EdgeFelixCombinedDraftUploadsEdge {
  final PurpleNode node;

  EdgeFelixCombinedDraftUploadsEdge({
    required this.node,
  });

  factory EdgeFelixCombinedDraftUploadsEdge.fromJson(Map<String, dynamic> json) => EdgeFelixCombinedDraftUploadsEdge(
    node: PurpleNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class PurpleNode {
  final Typename typename;
  final String id;
  final String shortcode;
  final Dimensions dimensions;
  final String displayUrl;
  final EdgeMediaToCaptionClass edgeMediaToTaggedUser;
  final dynamic factCheckOverallRating;
  final dynamic factCheckInformation;
  final dynamic gatingInfo;
  final SharingFrictionInfo sharingFrictionInfo;
  final dynamic mediaOverlayInfo;
  final String mediaPreview;
  final Owner owner;
  final bool isVideo;
  final bool hasUpcomingEvent;
  final String accessibilityCaption;
  final DashInfo dashInfo;
  final bool hasAudio;
  final String trackingToken;
  final String videoUrl;
  final int videoViewCount;
  final EdgeMediaToCaptionClass edgeMediaToCaption;
  final EdgeFollowClass edgeMediaToComment;
  final bool commentsDisabled;
  final int takenAtTimestamp;
  final EdgeFollowClass edgeLikedBy;
  final EdgeFollowClass edgeMediaPreviewLike;
  final Location location;
  final dynamic nftAssetInfo;
  final String thumbnailSrc;
  final List<ThumbnailResource> thumbnailResources;
  final dynamic felixProfileGridCrop;
  final List<CoauthorProducer> coauthorProducers;
  final List<CoauthorProducer> pinnedForUsers;
  final bool viewerCanReshare;
  final dynamic encodingStatus;
  final bool isPublished;
  final ProductType productType;
  final dynamic title;
  final double videoDuration;
  final EdgeMediaToCaptionClass edgeSidecarToChildren;
  final ClipsMusicAttributionInfo clipsMusicAttributionInfo;

  PurpleNode({
    required this.typename,
    required this.id,
    required this.shortcode,
    required this.dimensions,
    required this.displayUrl,
    required this.edgeMediaToTaggedUser,
    required this.factCheckOverallRating,
    required this.factCheckInformation,
    required this.gatingInfo,
    required this.sharingFrictionInfo,
    required this.mediaOverlayInfo,
    required this.mediaPreview,
    required this.owner,
    required this.isVideo,
    required this.hasUpcomingEvent,
    required this.accessibilityCaption,
    required this.dashInfo,
    required this.hasAudio,
    required this.trackingToken,
    required this.videoUrl,
    required this.videoViewCount,
    required this.edgeMediaToCaption,
    required this.edgeMediaToComment,
    required this.commentsDisabled,
    required this.takenAtTimestamp,
    required this.edgeLikedBy,
    required this.edgeMediaPreviewLike,
    required this.location,
    required this.nftAssetInfo,
    required this.thumbnailSrc,
    required this.thumbnailResources,
    required this.felixProfileGridCrop,
    required this.coauthorProducers,
    required this.pinnedForUsers,
    required this.viewerCanReshare,
    required this.encodingStatus,
    required this.isPublished,
    required this.productType,
    required this.title,
    required this.videoDuration,
    required this.edgeSidecarToChildren,
    required this.clipsMusicAttributionInfo,
  });

  factory PurpleNode.fromJson(Map<String, dynamic> json) => PurpleNode(
    typename: typenameValues.map[json["__typename"]]!,
    id: json["id"],
    shortcode: json["shortcode"],
    dimensions: Dimensions.fromJson(json["dimensions"]),
    displayUrl: json["display_url"],
    edgeMediaToTaggedUser: EdgeMediaToCaptionClass.fromJson(json["edge_media_to_tagged_user"]),
    factCheckOverallRating: json["fact_check_overall_rating"],
    factCheckInformation: json["fact_check_information"],
    gatingInfo: json["gating_info"],
    sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
    mediaOverlayInfo: json["media_overlay_info"],
    mediaPreview: json["media_preview"],
    owner: Owner.fromJson(json["owner"]),
    isVideo: json["is_video"],
    hasUpcomingEvent: json["has_upcoming_event"],
    accessibilityCaption: json["accessibility_caption"],
    dashInfo: DashInfo.fromJson(json["dash_info"]),
    hasAudio: json["has_audio"],
    trackingToken: json["tracking_token"],
    videoUrl: json["video_url"],
    videoViewCount: json["video_view_count"],
    edgeMediaToCaption: EdgeMediaToCaptionClass.fromJson(json["edge_media_to_caption"]),
    edgeMediaToComment: EdgeFollowClass.fromJson(json["edge_media_to_comment"]),
    commentsDisabled: json["comments_disabled"],
    takenAtTimestamp: json["taken_at_timestamp"],
    edgeLikedBy: EdgeFollowClass.fromJson(json["edge_liked_by"]),
    edgeMediaPreviewLike: EdgeFollowClass.fromJson(json["edge_media_preview_like"]),
    location: Location.fromJson(json["location"]),
    nftAssetInfo: json["nft_asset_info"],
    thumbnailSrc: json["thumbnail_src"],
    thumbnailResources: List<ThumbnailResource>.from(json["thumbnail_resources"].map((x) => ThumbnailResource.fromJson(x))),
    felixProfileGridCrop: json["felix_profile_grid_crop"],
    coauthorProducers: List<CoauthorProducer>.from(json["coauthor_producers"].map((x) => CoauthorProducer.fromJson(x))),
    pinnedForUsers: List<CoauthorProducer>.from(json["pinned_for_users"].map((x) => CoauthorProducer.fromJson(x))),
    viewerCanReshare: json["viewer_can_reshare"],
    encodingStatus: json["encoding_status"],
    isPublished: json["is_published"],
    productType: productTypeValues.map[json["product_type"]]!,
    title: json["title"],
    videoDuration: json["video_duration"]?.toDouble(),
    edgeSidecarToChildren: EdgeMediaToCaptionClass.fromJson(json["edge_sidecar_to_children"]),
    clipsMusicAttributionInfo: ClipsMusicAttributionInfo.fromJson(json["clips_music_attribution_info"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typenameValues.reverse[typename],
    "id": id,
    "shortcode": shortcode,
    "dimensions": dimensions.toJson(),
    "display_url": displayUrl,
    "edge_media_to_tagged_user": edgeMediaToTaggedUser.toJson(),
    "fact_check_overall_rating": factCheckOverallRating,
    "fact_check_information": factCheckInformation,
    "gating_info": gatingInfo,
    "sharing_friction_info": sharingFrictionInfo.toJson(),
    "media_overlay_info": mediaOverlayInfo,
    "media_preview": mediaPreview,
    "owner": owner.toJson(),
    "is_video": isVideo,
    "has_upcoming_event": hasUpcomingEvent,
    "accessibility_caption": accessibilityCaption,
    "dash_info": dashInfo.toJson(),
    "has_audio": hasAudio,
    "tracking_token": trackingToken,
    "video_url": videoUrl,
    "video_view_count": videoViewCount,
    "edge_media_to_caption": edgeMediaToCaption.toJson(),
    "edge_media_to_comment": edgeMediaToComment.toJson(),
    "comments_disabled": commentsDisabled,
    "taken_at_timestamp": takenAtTimestamp,
    "edge_liked_by": edgeLikedBy.toJson(),
    "edge_media_preview_like": edgeMediaPreviewLike.toJson(),
    "location": location.toJson(),
    "nft_asset_info": nftAssetInfo,
    "thumbnail_src": thumbnailSrc,
    "thumbnail_resources": List<dynamic>.from(thumbnailResources.map((x) => x.toJson())),
    "felix_profile_grid_crop": felixProfileGridCrop,
    "coauthor_producers": List<dynamic>.from(coauthorProducers.map((x) => x.toJson())),
    "pinned_for_users": List<dynamic>.from(pinnedForUsers.map((x) => x.toJson())),
    "viewer_can_reshare": viewerCanReshare,
    "encoding_status": encodingStatus,
    "is_published": isPublished,
    "product_type": productTypeValues.reverse[productType],
    "title": title,
    "video_duration": videoDuration,
    "edge_sidecar_to_children": edgeSidecarToChildren.toJson(),
    "clips_music_attribution_info": clipsMusicAttributionInfo.toJson(),
  };
}

class ClipsMusicAttributionInfo {
  final String artistName;
  final String songName;
  final bool usesOriginalAudio;
  final bool shouldMuteAudio;
  final String shouldMuteAudioReason;
  final String audioId;

  ClipsMusicAttributionInfo({
    required this.artistName,
    required this.songName,
    required this.usesOriginalAudio,
    required this.shouldMuteAudio,
    required this.shouldMuteAudioReason,
    required this.audioId,
  });

  factory ClipsMusicAttributionInfo.fromJson(Map<String, dynamic> json) => ClipsMusicAttributionInfo(
    artistName: json["artist_name"],
    songName: json["song_name"],
    usesOriginalAudio: json["uses_original_audio"],
    shouldMuteAudio: json["should_mute_audio"],
    shouldMuteAudioReason: json["should_mute_audio_reason"],
    audioId: json["audio_id"],
  );

  Map<String, dynamic> toJson() => {
    "artist_name": artistName,
    "song_name": songName,
    "uses_original_audio": usesOriginalAudio,
    "should_mute_audio": shouldMuteAudio,
    "should_mute_audio_reason": shouldMuteAudioReason,
    "audio_id": audioId,
  };
}

class CoauthorProducer {
  final String id;
  final bool isVerified;
  final String profilePicUrl;
  final String username;

  CoauthorProducer({
    required this.id,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
  });

  factory CoauthorProducer.fromJson(Map<String, dynamic> json) => CoauthorProducer(
    id: json["id"],
    isVerified: json["is_verified"],
    profilePicUrl: json["profile_pic_url"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_verified": isVerified,
    "profile_pic_url": profilePicUrl,
    "username": username,
  };
}

class DashInfo {
  final bool isDashEligible;
  final String videoDashManifest;
  final int numberOfQualities;

  DashInfo({
    required this.isDashEligible,
    required this.videoDashManifest,
    required this.numberOfQualities,
  });

  factory DashInfo.fromJson(Map<String, dynamic> json) => DashInfo(
    isDashEligible: json["is_dash_eligible"],
    videoDashManifest: json["video_dash_manifest"],
    numberOfQualities: json["number_of_qualities"],
  );

  Map<String, dynamic> toJson() => {
    "is_dash_eligible": isDashEligible,
    "video_dash_manifest": videoDashManifest,
    "number_of_qualities": numberOfQualities,
  };
}

class Dimensions {
  final int height;
  final int width;

  Dimensions({
    required this.height,
    required this.width,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
    height: json["height"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "width": width,
  };
}

class EdgeFollowClass {
  final int count;

  EdgeFollowClass({
    required this.count,
  });

  factory EdgeFollowClass.fromJson(Map<String, dynamic> json) => EdgeFollowClass(
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
  };
}

class FluffyNode {
  final String text;
  final NodeUser user;
  final double x;
  final double y;
  final Typename typename;
  final String id;
  final String shortcode;
  final Dimensions dimensions;
  final String displayUrl;
  final EdgeMediaToCaptionClass edgeMediaToTaggedUser;
  final dynamic factCheckOverallRating;
  final dynamic factCheckInformation;
  final dynamic gatingInfo;
  final SharingFrictionInfo sharingFrictionInfo;
  final dynamic mediaOverlayInfo;
  final String mediaPreview;
  final Owner owner;
  final bool isVideo;
  final bool hasUpcomingEvent;
  final String accessibilityCaption;

  FluffyNode({
    required this.text,
    required this.user,
    required this.x,
    required this.y,
    required this.typename,
    required this.id,
    required this.shortcode,
    required this.dimensions,
    required this.displayUrl,
    required this.edgeMediaToTaggedUser,
    required this.factCheckOverallRating,
    required this.factCheckInformation,
    required this.gatingInfo,
    required this.sharingFrictionInfo,
    required this.mediaOverlayInfo,
    required this.mediaPreview,
    required this.owner,
    required this.isVideo,
    required this.hasUpcomingEvent,
    required this.accessibilityCaption,
  });

  factory FluffyNode.fromJson(Map<String, dynamic> json) => FluffyNode(
    text: json["text"],
    user: NodeUser.fromJson(json["user"]),
    x: json["x"]?.toDouble(),
    y: json["y"]?.toDouble(),
    typename: typenameValues.map[json["__typename"]]!,
    id: json["id"],
    shortcode: json["shortcode"],
    dimensions: Dimensions.fromJson(json["dimensions"]),
    displayUrl: json["display_url"],
    edgeMediaToTaggedUser: EdgeMediaToCaptionClass.fromJson(json["edge_media_to_tagged_user"]),
    factCheckOverallRating: json["fact_check_overall_rating"],
    factCheckInformation: json["fact_check_information"],
    gatingInfo: json["gating_info"],
    sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
    mediaOverlayInfo: json["media_overlay_info"],
    mediaPreview: json["media_preview"],
    owner: Owner.fromJson(json["owner"]),
    isVideo: json["is_video"],
    hasUpcomingEvent: json["has_upcoming_event"],
    accessibilityCaption: json["accessibility_caption"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "user": user.toJson(),
    "x": x,
    "y": y,
    "__typename": typenameValues.reverse[typename],
    "id": id,
    "shortcode": shortcode,
    "dimensions": dimensions.toJson(),
    "display_url": displayUrl,
    "edge_media_to_tagged_user": edgeMediaToTaggedUser.toJson(),
    "fact_check_overall_rating": factCheckOverallRating,
    "fact_check_information": factCheckInformation,
    "gating_info": gatingInfo,
    "sharing_friction_info": sharingFrictionInfo.toJson(),
    "media_overlay_info": mediaOverlayInfo,
    "media_preview": mediaPreview,
    "owner": owner.toJson(),
    "is_video": isVideo,
    "has_upcoming_event": hasUpcomingEvent,
    "accessibility_caption": accessibilityCaption,
  };
}

class EdgeMediaToCaptionEdge {
  final FluffyNode node;

  EdgeMediaToCaptionEdge({
    required this.node,
  });

  factory EdgeMediaToCaptionEdge.fromJson(Map<String, dynamic> json) => EdgeMediaToCaptionEdge(
    node: FluffyNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class EdgeMediaToCaptionClass {
  final List<EdgeMediaToCaptionEdge> edges;

  EdgeMediaToCaptionClass({
    required this.edges,
  });

  factory EdgeMediaToCaptionClass.fromJson(Map<String, dynamic> json) => EdgeMediaToCaptionClass(
    edges: List<EdgeMediaToCaptionEdge>.from(json["edges"].map((x) => EdgeMediaToCaptionEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class Owner {
  final String id;
  final String username;

  Owner({
    required this.id,
    required this.username,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
    id: json["id"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
  };
}

class SharingFrictionInfo {
  final bool shouldHaveSharingFriction;
  final dynamic bloksAppUrl;

  SharingFrictionInfo({
    required this.shouldHaveSharingFriction,
    required this.bloksAppUrl,
  });

  factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) => SharingFrictionInfo(
    shouldHaveSharingFriction: json["should_have_sharing_friction"],
    bloksAppUrl: json["bloks_app_url"],
  );

  Map<String, dynamic> toJson() => {
    "should_have_sharing_friction": shouldHaveSharingFriction,
    "bloks_app_url": bloksAppUrl,
  };
}

enum Typename {
  GRAPH_IMAGE,
  GRAPH_SIDECAR,
  GRAPH_VIDEO
}

final typenameValues = EnumValues({
  "GraphImage": Typename.GRAPH_IMAGE,
  "GraphSidecar": Typename.GRAPH_SIDECAR,
  "GraphVideo": Typename.GRAPH_VIDEO
});

class NodeUser {
  final String fullName;
  final bool followedByViewer;
  final String id;
  final bool isVerified;
  final String profilePicUrl;
  final String username;

  NodeUser({
    required this.fullName,
    required this.followedByViewer,
    required this.id,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
  });

  factory NodeUser.fromJson(Map<String, dynamic> json) => NodeUser(
    fullName: json["full_name"],
    followedByViewer: json["followed_by_viewer"],
    id: json["id"],
    isVerified: json["is_verified"],
    profilePicUrl: json["profile_pic_url"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "full_name": fullName,
    "followed_by_viewer": followedByViewer,
    "id": id,
    "is_verified": isVerified,
    "profile_pic_url": profilePicUrl,
    "username": username,
  };
}

class Location {
  final String id;
  final bool hasPublicPage;
  final String name;
  final String slug;

  Location({
    required this.id,
    required this.hasPublicPage,
    required this.name,
    required this.slug,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    id: json["id"],
    hasPublicPage: json["has_public_page"],
    name: json["name"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "has_public_page": hasPublicPage,
    "name": name,
    "slug": slug,
  };
}

enum ProductType {
  CLIPS,
  FEED
}

final productTypeValues = EnumValues({
  "clips": ProductType.CLIPS,
  "feed": ProductType.FEED
});

class ThumbnailResource {
  final String src;
  final int configWidth;
  final int configHeight;

  ThumbnailResource({
    required this.src,
    required this.configWidth,
    required this.configHeight,
  });

  factory ThumbnailResource.fromJson(Map<String, dynamic> json) => ThumbnailResource(
    src: json["src"],
    configWidth: json["config_width"],
    configHeight: json["config_height"],
  );

  Map<String, dynamic> toJson() => {
    "src": src,
    "config_width": configWidth,
    "config_height": configHeight,
  };
}

class PageInfo {
  final bool hasNextPage;
  final String endCursor;

  PageInfo({
    required this.hasNextPage,
    required this.endCursor,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
    hasNextPage: json["has_next_page"],
    endCursor: json["end_cursor"],
  );

  Map<String, dynamic> toJson() => {
    "has_next_page": hasNextPage,
    "end_cursor": endCursor,
  };
}

class EdgeMutualFollowedBy {
  final int count;
  final List<dynamic> edges;

  EdgeMutualFollowedBy({
    required this.count,
    required this.edges,
  });

  factory EdgeMutualFollowedBy.fromJson(Map<String, dynamic> json) => EdgeMutualFollowedBy(
    count: json["count"],
    edges: List<dynamic>.from(json["edges"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "edges": List<dynamic>.from(edges.map((x) => x)),
  };
}

class FbProfileBiolink {
  final String url;
  final String name;

  FbProfileBiolink({
    required this.url,
    required this.name,
  });

  factory FbProfileBiolink.fromJson(Map<String, dynamic> json) => FbProfileBiolink(
    url: json["url"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "name": name,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
