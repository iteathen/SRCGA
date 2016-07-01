.class public Ljavafx/scene/ImageCursorBuilder;
.super Ljava/lang/Object;
.source "ImageCursorBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/ImageCursorBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/ImageCursor;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private hotspotX:D

.field private hotspotY:D

.field private image:Ljavafx/scene/image/Image;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/ImageCursorBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/ImageCursorBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/ImageCursorBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/ImageCursorBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/ImageCursorBuilder;->build()Ljavafx/scene/ImageCursor;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/ImageCursor;
    .locals 11

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    new-instance v3, Ljavafx/scene/ImageCursor;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/ImageCursorBuilder;->image:Ljavafx/scene/image/Image;

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/ImageCursorBuilder;->hotspotX:D

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/ImageCursorBuilder;->hotspotY:D

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/ImageCursor;-><init>(Ljavafx/scene/image/Image;DD)V

    move-object v2, v3

    .line 81
    .local v2, "x":Ljavafx/scene/ImageCursor;
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    return-object v1
.end method

.method public hotspotX(D)Ljavafx/scene/ImageCursorBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/ImageCursorBuilder;->hotspotX:D

    .line 53
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    return-object v0
.end method

.method public hotspotY(D)Ljavafx/scene/ImageCursorBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/ImageCursorBuilder;->hotspotY:D

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    return-object v0
.end method

.method public image(Ljavafx/scene/image/Image;)Ljavafx/scene/ImageCursorBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/Image;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/ImageCursorBuilder;->image:Ljavafx/scene/image/Image;

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/ImageCursorBuilder;, "Ljavafx/scene/ImageCursorBuilder<TB;>;"
    return-object v0
.end method
