.class public final Ljavafx/scene/control/IndexRangeBuilder;
.super Ljava/lang/Object;
.source "IndexRangeBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/IndexRange;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private end:I

.field private start:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRangeBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/IndexRangeBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/IndexRangeBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/IndexRangeBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRangeBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/IndexRangeBuilder;->build()Ljavafx/scene/control/IndexRange;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/IndexRangeBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/control/IndexRange;
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRangeBuilder;
    new-instance v2, Ljavafx/scene/control/IndexRange;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/IndexRangeBuilder;->start:I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/IndexRangeBuilder;->end:I

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/IndexRange;-><init>(II)V

    move-object v1, v2

    .line 69
    .local v1, "x":Ljavafx/scene/control/IndexRange;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/IndexRangeBuilder;
    return-object v0
.end method

.method public end(I)Ljavafx/scene/control/IndexRangeBuilder;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRangeBuilder;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/IndexRangeBuilder;->end:I

    .line 52
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/IndexRangeBuilder;
    return-object v0
.end method

.method public start(I)Ljavafx/scene/control/IndexRangeBuilder;
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexRangeBuilder;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/IndexRangeBuilder;->start:I

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/IndexRangeBuilder;
    return-object v0
.end method
