.class public Ljavafx/scene/paint/ColorBuilder;
.super Ljava/lang/Object;
.source "ColorBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/paint/ColorBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/paint/Color;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private blue:D

.field private green:D

.field private opacity:D

.field private red:D


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Ljavafx/scene/paint/ColorBuilder;->opacity:D

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/paint/ColorBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/paint/ColorBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/paint/ColorBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/paint/ColorBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blue(D)Ljavafx/scene/paint/ColorBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/ColorBuilder;->blue:D

    .line 53
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/paint/ColorBuilder;->build()Ljavafx/scene/paint/Color;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/paint/Color;
    .locals 13

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/paint/Color;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/paint/ColorBuilder;->red:D

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/paint/ColorBuilder;->green:D

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/paint/ColorBuilder;->blue:D

    move-object v10, v0

    iget-wide v10, v10, Ljavafx/scene/paint/ColorBuilder;->opacity:D

    invoke-direct/range {v3 .. v11}, Ljavafx/scene/paint/Color;-><init>(DDDD)V

    move-object v1, v2

    .line 91
    .local v1, "x":Ljavafx/scene/paint/Color;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    return-object v0
.end method

.method public green(D)Ljavafx/scene/paint/ColorBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/ColorBuilder;->green:D

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    return-object v0
.end method

.method public opacity(D)Ljavafx/scene/paint/ColorBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/ColorBuilder;->opacity:D

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    return-object v0
.end method

.method public red(D)Ljavafx/scene/paint/ColorBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/ColorBuilder;->red:D

    .line 83
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/ColorBuilder;, "Ljavafx/scene/paint/ColorBuilder<TB;>;"
    return-object v0
.end method
