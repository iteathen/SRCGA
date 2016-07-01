.class public interface abstract Lcom/sun/media/jfxmedia/MetadataParser;
.super Ljava/lang/Object;
.source "MetadataParser.java"


# static fields
.field public static final ALBUMARTIST_TAG_NAME:Ljava/lang/String; = "album artist"

.field public static final ALBUM_TAG_NAME:Ljava/lang/String; = "album"

.field public static final ARTIST_TAG_NAME:Ljava/lang/String; = "artist"

.field public static final AUDIOCODEC_TAG_NAME:Ljava/lang/String; = "audio codec"

.field public static final COMMENT_TAG_NAME:Ljava/lang/String; = "comment"

.field public static final COMPOSER_TAG_NAME:Ljava/lang/String; = "composer"

.field public static final CREATIONDATE_TAG_NAME:Ljava/lang/String; = "creationdate"

.field public static final DISCCOUNT_TAG_NAME:Ljava/lang/String; = "disc count"

.field public static final DISCNUMBER_TAG_NAME:Ljava/lang/String; = "disc number"

.field public static final DURATION_TAG_NAME:Ljava/lang/String; = "duration"

.field public static final FRAMERATE_TAG_NAME:Ljava/lang/String; = "framerate"

.field public static final GENRE_TAG_NAME:Ljava/lang/String; = "genre"

.field public static final HEIGHT_TAG_NAME:Ljava/lang/String; = "height"

.field public static final IMAGE_TAG_NAME:Ljava/lang/String; = "image"

.field public static final RAW_FLV_METADATA_NAME:Ljava/lang/String; = "FLV"

.field public static final RAW_ID3_METADATA_NAME:Ljava/lang/String; = "ID3"

.field public static final RAW_METADATA_TAG_NAME:Ljava/lang/String; = "raw metadata"

.field public static final TEXT_TAG_NAME:Ljava/lang/String; = "text"

.field public static final TITLE_TAG_NAME:Ljava/lang/String; = "title"

.field public static final TRACKCOUNT_TAG_NAME:Ljava/lang/String; = "track count"

.field public static final TRACKNUMBER_TAG_NAME:Ljava/lang/String; = "track number"

.field public static final VIDEOCODEC_TAG_NAME:Ljava/lang/String; = "video codec"

.field public static final WIDTH_TAG_NAME:Ljava/lang/String; = "width"

.field public static final YEAR_TAG_NAME:Ljava/lang/String; = "year"


# virtual methods
.method public abstract addListener(Lcom/sun/media/jfxmedia/events/MetadataListener;)V
.end method

.method public abstract removeListener(Lcom/sun/media/jfxmedia/events/MetadataListener;)V
.end method

.method public abstract startParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopParser()V
.end method
