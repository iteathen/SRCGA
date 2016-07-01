.class public final Ljavafx/scene/layout/BackgroundImage;
.super Ljava/lang/Object;
.source "BackgroundImage.java"


# instance fields
.field private final hash:I

.field final image:Ljavafx/scene/image/Image;

.field opaque:Ljava/lang/Boolean;

.field final position:Ljavafx/scene/layout/BackgroundPosition;

.field final repeatX:Ljavafx/scene/layout/BackgroundRepeat;

.field final repeatY:Ljavafx/scene/layout/BackgroundRepeat;

.field final size:Ljavafx/scene/layout/BackgroundSize;


# direct methods
.method public constructor <init>(Ljavafx/scene/image/Image;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundPosition;Ljavafx/scene/layout/BackgroundSize;)V
    .locals 11
    .param p1    # Ljavafx/scene/image/Image;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "image"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/layout/BackgroundRepeat;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "repeatX"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/layout/BackgroundRepeat;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "repeatY"
        .end annotation
    .end param
    .param p4    # Ljavafx/scene/layout/BackgroundPosition;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "position"
        .end annotation
    .end param
    .param p5    # Ljavafx/scene/layout/BackgroundSize;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "size"
        .end annotation
    .end param

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundImage;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, p2

    .local v2, "repeatX":Ljavafx/scene/layout/BackgroundRepeat;
    move-object v3, p3

    .local v3, "repeatY":Ljavafx/scene/layout/BackgroundRepeat;
    move-object v4, p4

    .local v4, "position":Ljavafx/scene/layout/BackgroundPosition;
    move-object/from16 v5, p5

    .local v5, "size":Ljavafx/scene/layout/BackgroundSize;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 94
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/scene/layout/BackgroundImage;->opaque:Ljava/lang/Boolean;

    .line 115
    move-object v7, v1

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Image cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 116
    :cond_0
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    .line 118
    move-object v7, v0

    move-object v8, v2

    if-nez v8, :cond_1

    sget-object v8, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    :goto_0
    iput-object v8, v7, Ljavafx/scene/layout/BackgroundImage;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    .line 119
    move-object v7, v0

    move-object v8, v3

    if-nez v8, :cond_2

    sget-object v8, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    :goto_1
    iput-object v8, v7, Ljavafx/scene/layout/BackgroundImage;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    .line 120
    move-object v7, v0

    move-object v8, v4

    if-nez v8, :cond_3

    sget-object v8, Ljavafx/scene/layout/BackgroundPosition;->DEFAULT:Ljavafx/scene/layout/BackgroundPosition;

    :goto_2
    iput-object v8, v7, Ljavafx/scene/layout/BackgroundImage;->position:Ljavafx/scene/layout/BackgroundPosition;

    .line 121
    move-object v7, v0

    move-object v8, v5

    if-nez v8, :cond_4

    sget-object v8, Ljavafx/scene/layout/BackgroundSize;->DEFAULT:Ljavafx/scene/layout/BackgroundSize;

    :goto_3
    iput-object v8, v7, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    .line 126
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    move v6, v7

    .line 127
    .local v6, "result":I
    const/16 v7, 0x1f

    move v8, v6

    mul-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/BackgroundImage;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    invoke-virtual {v8}, Ljavafx/scene/layout/BackgroundRepeat;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .line 128
    const/16 v7, 0x1f

    move v8, v6

    mul-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/BackgroundImage;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    invoke-virtual {v8}, Ljavafx/scene/layout/BackgroundRepeat;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .line 129
    const/16 v7, 0x1f

    move v8, v6

    mul-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/BackgroundImage;->position:Ljavafx/scene/layout/BackgroundPosition;

    invoke-virtual {v8}, Ljavafx/scene/layout/BackgroundPosition;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .line 130
    const/16 v7, 0x1f

    move v8, v6

    mul-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    invoke-virtual {v8}, Ljavafx/scene/layout/BackgroundSize;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .line 131
    move-object v7, v0

    move v8, v6

    iput v8, v7, Ljavafx/scene/layout/BackgroundImage;->hash:I

    .line 132
    return-void

    .line 118
    .end local v6    # "result":I
    :cond_1
    move-object v8, v2

    goto :goto_0

    .line 119
    :cond_2
    move-object v8, v3

    goto :goto_1

    .line 120
    :cond_3
    move-object v8, v4

    goto :goto_2

    .line 121
    :cond_4
    move-object v8, v5

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundImage;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 149
    .end local v0    # "this":Ljavafx/scene/layout/BackgroundImage;
    :goto_0
    return v0

    .line 139
    .restart local v0    # "this":Ljavafx/scene/layout/BackgroundImage;
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

    .line 140
    :cond_2
    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/BackgroundImage;

    move-object v2, v3

    .line 142
    .local v2, "that":Ljavafx/scene/layout/BackgroundImage;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/BackgroundImage;->hash:I

    move-object v4, v2

    iget v4, v4, Ljavafx/scene/layout/BackgroundImage;->hash:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 143
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 144
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BackgroundImage;->position:Ljavafx/scene/layout/BackgroundPosition;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundImage;->position:Ljavafx/scene/layout/BackgroundPosition;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BackgroundPosition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 145
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BackgroundImage;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundImage;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    if-eq v3, v4, :cond_6

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 146
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BackgroundImage;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundImage;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    if-eq v3, v4, :cond_7

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 147
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BackgroundSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 149
    :cond_8
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public final getImage()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundImage;
    return-object v0
.end method

.method public final getPosition()Ljavafx/scene/layout/BackgroundPosition;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundImage;->position:Ljavafx/scene/layout/BackgroundPosition;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundImage;
    return-object v0
.end method

.method public final getRepeatX()Ljavafx/scene/layout/BackgroundRepeat;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundImage;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundImage;
    return-object v0
.end method

.method public final getRepeatY()Ljavafx/scene/layout/BackgroundRepeat;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundImage;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundImage;
    return-object v0
.end method

.method public final getSize()Ljavafx/scene/layout/BackgroundSize;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundImage;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundImage;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/BackgroundImage;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundImage;
    return v0
.end method
