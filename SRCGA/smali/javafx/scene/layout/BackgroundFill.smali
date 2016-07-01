.class public final Ljavafx/scene/layout/BackgroundFill;
.super Ljava/lang/Object;
.source "BackgroundFill.java"


# instance fields
.field final fill:Ljavafx/scene/paint/Paint;

.field private final hash:I

.field final insets:Ljavafx/geometry/Insets;

.field final radii:Ljavafx/scene/layout/CornerRadii;


# direct methods
.method public constructor <init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;)V
    .locals 7
    .param p1    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "fill"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/layout/CornerRadii;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "radii"
        .end annotation
    .end param
    .param p3    # Ljavafx/geometry/Insets;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "insets"
        .end annotation
    .end param

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundFill;
    move-object v1, p1

    .local v1, "fill":Ljavafx/scene/paint/Paint;
    move-object v2, p2

    .local v2, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object v3, p3

    .local v3, "insets":Ljavafx/geometry/Insets;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 90
    move-object v5, v0

    move-object v6, v1

    if-nez v6, :cond_0

    sget-object v6, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    :goto_0
    iput-object v6, v5, Ljavafx/scene/layout/BackgroundFill;->fill:Ljavafx/scene/paint/Paint;

    .line 91
    move-object v5, v0

    move-object v6, v2

    if-nez v6, :cond_1

    sget-object v6, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    :goto_1
    iput-object v6, v5, Ljavafx/scene/layout/BackgroundFill;->radii:Ljavafx/scene/layout/CornerRadii;

    .line 92
    move-object v5, v0

    move-object v6, v3

    if-nez v6, :cond_2

    sget-object v6, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    :goto_2
    iput-object v6, v5, Ljavafx/scene/layout/BackgroundFill;->insets:Ljavafx/geometry/Insets;

    .line 97
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/BackgroundFill;->fill:Ljavafx/scene/paint/Paint;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move v4, v5

    .line 98
    .local v4, "result":I
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/BackgroundFill;->radii:Ljavafx/scene/layout/CornerRadii;

    invoke-virtual {v6}, Ljavafx/scene/layout/CornerRadii;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    .line 99
    const/16 v5, 0x1f

    move v6, v4

    mul-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/BackgroundFill;->insets:Ljavafx/geometry/Insets;

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    .line 100
    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljavafx/scene/layout/BackgroundFill;->hash:I

    .line 101
    return-void

    .line 90
    .end local v4    # "result":I
    :cond_0
    move-object v6, v1

    goto :goto_0

    .line 91
    :cond_1
    move-object v6, v2

    goto :goto_1

    .line 92
    :cond_2
    move-object v6, v3

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundFill;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 116
    .end local v0    # "this":Ljavafx/scene/layout/BackgroundFill;
    :goto_0
    return v0

    .line 108
    .restart local v0    # "this":Ljavafx/scene/layout/BackgroundFill;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 109
    :cond_2
    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/BackgroundFill;

    move-object v2, v3

    .line 111
    .local v2, "that":Ljavafx/scene/layout/BackgroundFill;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/BackgroundFill;->hash:I

    move-object v4, v2

    iget v4, v4, Ljavafx/scene/layout/BackgroundFill;->hash:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 112
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BackgroundFill;->fill:Ljavafx/scene/paint/Paint;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundFill;->fill:Ljavafx/scene/paint/Paint;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 113
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BackgroundFill;->insets:Ljavafx/geometry/Insets;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundFill;->insets:Ljavafx/geometry/Insets;

    invoke-virtual {v3, v4}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 114
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BackgroundFill;->radii:Ljavafx/scene/layout/CornerRadii;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundFill;->radii:Ljavafx/scene/layout/CornerRadii;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/CornerRadii;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 116
    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public final getFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundFill;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundFill;->fill:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundFill;
    return-object v0
.end method

.method public final getInsets()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundFill;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundFill;->insets:Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundFill;
    return-object v0
.end method

.method public final getRadii()Ljavafx/scene/layout/CornerRadii;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundFill;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundFill;->radii:Ljavafx/scene/layout/CornerRadii;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundFill;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundFill;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/BackgroundFill;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundFill;
    return v0
.end method
