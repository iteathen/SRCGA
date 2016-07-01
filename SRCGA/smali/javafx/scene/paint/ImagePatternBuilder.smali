.class public final Ljavafx/scene/paint/ImagePatternBuilder;
.super Ljava/lang/Object;
.source "ImagePatternBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/paint/ImagePattern;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private height:D

.field private image:Ljavafx/scene/image/Image;

.field private proportional:Z

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/paint/ImagePatternBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/paint/ImagePatternBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/paint/ImagePatternBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/paint/ImagePatternBuilder;->build()Ljavafx/scene/paint/ImagePattern;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePatternBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/paint/ImagePattern;
    .locals 16

    .prologue
    .line 104
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    new-instance v3, Ljavafx/scene/paint/ImagePattern;

    move-object v15, v3

    move-object v3, v15

    move-object v4, v15

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/paint/ImagePatternBuilder;->image:Ljavafx/scene/image/Image;

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/ImagePatternBuilder;->x:D

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/paint/ImagePatternBuilder;->y:D

    move-object v10, v1

    iget-wide v10, v10, Ljavafx/scene/paint/ImagePatternBuilder;->width:D

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/scene/paint/ImagePatternBuilder;->height:D

    move-object v14, v1

    iget-boolean v14, v14, Ljavafx/scene/paint/ImagePatternBuilder;->proportional:Z

    invoke-direct/range {v4 .. v14}, Ljavafx/scene/paint/ImagePattern;-><init>(Ljavafx/scene/image/Image;DDDDZ)V

    move-object v2, v3

    .line 105
    .local v2, "x":Ljavafx/scene/paint/ImagePattern;
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/paint/ImagePatternBuilder;
    return-object v1
.end method

.method public height(D)Ljavafx/scene/paint/ImagePatternBuilder;
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/ImagePatternBuilder;->height:D

    .line 52
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/ImagePatternBuilder;
    return-object v0
.end method

.method public image(Ljavafx/scene/image/Image;)Ljavafx/scene/paint/ImagePatternBuilder;
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/paint/ImagePatternBuilder;->image:Ljavafx/scene/image/Image;

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/ImagePatternBuilder;
    return-object v0
.end method

.method public proportional(Z)Ljavafx/scene/paint/ImagePatternBuilder;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/paint/ImagePatternBuilder;->proportional:Z

    .line 70
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/ImagePatternBuilder;
    return-object v0
.end method

.method public width(D)Ljavafx/scene/paint/ImagePatternBuilder;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/ImagePatternBuilder;->width:D

    .line 79
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/ImagePatternBuilder;
    return-object v0
.end method

.method public x(D)Ljavafx/scene/paint/ImagePatternBuilder;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/ImagePatternBuilder;->x:D

    .line 88
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/ImagePatternBuilder;
    return-object v0
.end method

.method public y(D)Ljavafx/scene/paint/ImagePatternBuilder;
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePatternBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/ImagePatternBuilder;->y:D

    .line 97
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/ImagePatternBuilder;
    return-object v0
.end method
