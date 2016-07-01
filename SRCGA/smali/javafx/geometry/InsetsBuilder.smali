.class public Ljavafx/geometry/InsetsBuilder;
.super Ljava/lang/Object;
.source "InsetsBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/geometry/InsetsBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/geometry/Insets;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bottom:D

.field private left:D

.field private right:D

.field private top:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/geometry/InsetsBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/geometry/InsetsBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/geometry/InsetsBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/geometry/InsetsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bottom(D)Ljavafx/geometry/InsetsBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/InsetsBuilder;->bottom:D

    .line 53
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/geometry/InsetsBuilder;->build()Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/geometry/Insets;
    .locals 13

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    new-instance v2, Ljavafx/geometry/Insets;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/InsetsBuilder;->top:D

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/geometry/InsetsBuilder;->right:D

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/geometry/InsetsBuilder;->bottom:D

    move-object v10, v0

    iget-wide v10, v10, Ljavafx/geometry/InsetsBuilder;->left:D

    invoke-direct/range {v3 .. v11}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    move-object v1, v2

    .line 91
    .local v1, "x":Ljavafx/geometry/Insets;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    return-object v0
.end method

.method public left(D)Ljavafx/geometry/InsetsBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/InsetsBuilder;->left:D

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    return-object v0
.end method

.method public right(D)Ljavafx/geometry/InsetsBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/InsetsBuilder;->right:D

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    return-object v0
.end method

.method public top(D)Ljavafx/geometry/InsetsBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/InsetsBuilder;->top:D

    .line 83
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/InsetsBuilder;, "Ljavafx/geometry/InsetsBuilder<TB;>;"
    return-object v0
.end method
