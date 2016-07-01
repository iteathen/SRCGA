.class public final Lcom/sun/javafx/cursor/ImageCursorFrame;
.super Lcom/sun/javafx/cursor/CursorFrame;
.source "ImageCursorFrame.java"


# instance fields
.field private final height:D

.field private final hotspotX:D

.field private final hotspotY:D

.field private final platformImage:Ljava/lang/Object;

.field private final width:D


# direct methods
.method public constructor <init>(Ljava/lang/Object;DDDD)V
    .locals 14

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    move-object v1, p1

    .local v1, "platformImage":Ljava/lang/Object;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move-wide/from16 v6, p6

    .local v6, "hotspotX":D
    move-wide/from16 v8, p8

    .local v8, "hotspotY":D
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/cursor/CursorFrame;-><init>()V

    .line 40
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/sun/javafx/cursor/ImageCursorFrame;->platformImage:Ljava/lang/Object;

    .line 41
    move-object v10, v0

    move-wide v11, v2

    iput-wide v11, v10, Lcom/sun/javafx/cursor/ImageCursorFrame;->width:D

    .line 42
    move-object v10, v0

    move-wide v11, v4

    iput-wide v11, v10, Lcom/sun/javafx/cursor/ImageCursorFrame;->height:D

    .line 43
    move-object v10, v0

    move-wide v11, v6

    iput-wide v11, v10, Lcom/sun/javafx/cursor/ImageCursorFrame;->hotspotX:D

    .line 44
    move-object v10, v0

    move-wide v11, v8

    iput-wide v11, v10, Lcom/sun/javafx/cursor/ImageCursorFrame;->hotspotY:D

    .line 45
    return-void
.end method


# virtual methods
.method public getCursorType()Lcom/sun/javafx/cursor/CursorType;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    sget-object v1, Lcom/sun/javafx/cursor/CursorType;->IMAGE:Lcom/sun/javafx/cursor/CursorType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    return-object v0
.end method

.method public getHeight()D
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/cursor/ImageCursorFrame;->height:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    return-wide v0
.end method

.method public getHotspotX()D
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/cursor/ImageCursorFrame;->hotspotX:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    return-wide v0
.end method

.method public getHotspotY()D
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/cursor/ImageCursorFrame;->hotspotY:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    return-wide v0
.end method

.method public getPlatformImage()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/cursor/ImageCursorFrame;->platformImage:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    return-object v0
.end method

.method public getWidth()D
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/cursor/ImageCursorFrame;->width:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/cursor/ImageCursorFrame;
    return-wide v0
.end method
