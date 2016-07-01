.class public Ljavafx/scene/control/SeparatorBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "SeparatorBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/SeparatorBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/Separator;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private halignment:Ljavafx/geometry/HPos;

.field private orientation:Ljavafx/geometry/Orientation;

.field private valignment:Ljavafx/geometry/VPos;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/SeparatorBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/SeparatorBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/SeparatorBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/SeparatorBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/Separator;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/Separator;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/SeparatorBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SeparatorBuilder;->halignment:Ljavafx/geometry/HPos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Separator;->setHalignment(Ljavafx/geometry/HPos;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SeparatorBuilder;->orientation:Ljavafx/geometry/Orientation;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Separator;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SeparatorBuilder;->valignment:Ljavafx/geometry/VPos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Separator;->setValignment(Ljavafx/geometry/VPos;)V

    .line 53
    :cond_2
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SeparatorBuilder;->build()Ljavafx/scene/control/Separator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/Separator;
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/Separator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/Separator;-><init>()V

    move-object v1, v2

    .line 93
    .local v1, "x":Ljavafx/scene/control/Separator;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SeparatorBuilder;->applyTo(Ljavafx/scene/control/Separator;)V

    .line 94
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    return-object v0
.end method

.method public halignment(Ljavafx/geometry/HPos;)Ljavafx/scene/control/SeparatorBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/HPos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/HPos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SeparatorBuilder;->halignment:Ljavafx/geometry/HPos;

    .line 62
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/SeparatorBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/SeparatorBuilder;->__set:I

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    return-object v0
.end method

.method public orientation(Ljavafx/geometry/Orientation;)Ljavafx/scene/control/SeparatorBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Orientation;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Orientation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SeparatorBuilder;->orientation:Ljavafx/geometry/Orientation;

    .line 73
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/SeparatorBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/SeparatorBuilder;->__set:I

    .line 74
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    return-object v0
.end method

.method public valignment(Ljavafx/geometry/VPos;)Ljavafx/scene/control/SeparatorBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/VPos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/VPos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SeparatorBuilder;->valignment:Ljavafx/geometry/VPos;

    .line 84
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/SeparatorBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/SeparatorBuilder;->__set:I

    .line 85
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SeparatorBuilder;, "Ljavafx/scene/control/SeparatorBuilder<TB;>;"
    return-object v0
.end method
