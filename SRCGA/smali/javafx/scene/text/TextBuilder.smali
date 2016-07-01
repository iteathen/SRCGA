.class public Ljavafx/scene/text/TextBuilder;
.super Ljavafx/scene/shape/ShapeBuilder;
.source "TextBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/text/TextBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/ShapeBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/text/Text;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private boundsType:Ljavafx/scene/text/TextBoundsType;

.field private font:Ljavafx/scene/text/Font;

.field private fontSmoothingType:Ljavafx/scene/text/FontSmoothingType;

.field private impl_caretBias:Z

.field private impl_caretPosition:I

.field private impl_selectionEnd:I

.field private impl_selectionStart:I

.field private strikethrough:Z

.field private text:Ljava/lang/String;

.field private textAlignment:Ljavafx/scene/text/TextAlignment;

.field private textOrigin:Ljavafx/geometry/VPos;

.field private underline:Z

.field private wrappingWidth:D

.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/ShapeBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/text/TextBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/text/TextBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/text/TextBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/text/TextBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/text/TextBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/text/TextBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/text/Text;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/text/Text;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/shape/ShapeBuilder;->applyTo(Ljavafx/scene/shape/Shape;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/text/TextBuilder;->__set:I

    move v3, v5

    .line 53
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 54
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 55
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 56
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 73
    :goto_1
    :pswitch_0
    goto :goto_0

    .line 57
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/text/TextBuilder;->boundsType:Ljavafx/scene/text/TextBoundsType;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setBoundsType(Ljavafx/scene/text/TextBoundsType;)V

    goto :goto_1

    .line 58
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/text/TextBuilder;->font:Ljavafx/scene/text/Font;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setFont(Ljavafx/scene/text/Font;)V

    goto :goto_1

    .line 59
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/text/TextBuilder;->fontSmoothingType:Ljavafx/scene/text/FontSmoothingType;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setFontSmoothingType(Ljavafx/scene/text/FontSmoothingType;)V

    goto :goto_1

    .line 60
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/text/TextBuilder;->impl_caretBias:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setImpl_caretBias(Z)V

    goto :goto_1

    .line 61
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/text/TextBuilder;->impl_caretPosition:I

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    goto :goto_1

    .line 62
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/text/TextBuilder;->impl_selectionEnd:I

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setImpl_selectionEnd(I)V

    goto :goto_1

    .line 63
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/text/TextBuilder;->impl_selectionStart:I

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setImpl_selectionStart(I)V

    goto :goto_1

    .line 64
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/text/TextBuilder;->strikethrough:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setStrikethrough(Z)V

    goto :goto_1

    .line 65
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/text/TextBuilder;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/text/TextBuilder;->textAlignment:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setTextAlignment(Ljavafx/scene/text/TextAlignment;)V

    goto :goto_1

    .line 67
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/text/TextBuilder;->textOrigin:Ljavafx/geometry/VPos;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setTextOrigin(Ljavafx/geometry/VPos;)V

    goto :goto_1

    .line 68
    :pswitch_c
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/text/TextBuilder;->underline:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setUnderline(Z)V

    goto :goto_1

    .line 69
    :pswitch_d
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/text/TextBuilder;->wrappingWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/text/Text;->setWrappingWidth(D)V

    goto :goto_1

    .line 70
    :pswitch_e
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/text/TextBuilder;->x:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/text/Text;->setX(D)V

    goto :goto_1

    .line 71
    :pswitch_f
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/text/TextBuilder;->y:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/text/Text;->setY(D)V

    goto :goto_1

    .line 74
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public boundsType(Ljavafx/scene/text/TextBoundsType;)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/TextBoundsType;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/TextBoundsType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/TextBuilder;->boundsType:Ljavafx/scene/text/TextBoundsType;

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 84
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/TextBuilder;->build()Ljavafx/scene/text/Text;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/text/Text;
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/text/Text;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/text/Text;-><init>()V

    move-object v1, v2

    .line 255
    .local v1, "x":Ljavafx/scene/text/Text;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/TextBuilder;->applyTo(Ljavafx/scene/text/Text;)V

    .line 256
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public font(Ljavafx/scene/text/Font;)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/Font;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/Font;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/TextBuilder;->font:Ljavafx/scene/text/Font;

    .line 94
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 95
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public fontSmoothingType(Ljavafx/scene/text/FontSmoothingType;)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/FontSmoothingType;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/FontSmoothingType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/TextBuilder;->fontSmoothingType:Ljavafx/scene/text/FontSmoothingType;

    .line 106
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 107
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public impl_caretBias(Z)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/text/TextBuilder;->impl_caretBias:Z

    .line 119
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 120
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public impl_caretPosition(I)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/text/TextBuilder;->impl_caretPosition:I

    .line 132
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 133
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public impl_selectionEnd(I)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/text/TextBuilder;->impl_selectionEnd:I

    .line 145
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 146
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public impl_selectionStart(I)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/text/TextBuilder;->impl_selectionStart:I

    .line 158
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 159
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public strikethrough(Z)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/text/TextBuilder;->strikethrough:Z

    .line 169
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 170
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/TextBuilder;->text:Ljava/lang/String;

    .line 180
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 181
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public textAlignment(Ljavafx/scene/text/TextAlignment;)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/TextAlignment;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/TextAlignment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/TextBuilder;->textAlignment:Ljavafx/scene/text/TextAlignment;

    .line 191
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 192
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public textOrigin(Ljavafx/geometry/VPos;)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/VPos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/VPos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/TextBuilder;->textOrigin:Ljavafx/geometry/VPos;

    .line 202
    move-object v2, v0

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 203
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public underline(Z)Ljavafx/scene/text/TextBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/text/TextBuilder;->underline:Z

    .line 213
    move-object v2, v0

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 214
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public wrappingWidth(D)Ljavafx/scene/text/TextBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/text/TextBuilder;->wrappingWidth:D

    .line 224
    move-object v3, v0

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 225
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/scene/text/TextBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/text/TextBuilder;->x:D

    .line 235
    move-object v3, v0

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 236
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/scene/text/TextBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/text/TextBuilder;->y:D

    .line 246
    move-object v3, v0

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljavafx/scene/text/TextBuilder;->__set(I)V

    .line 247
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/text/TextBuilder;, "Ljavafx/scene/text/TextBuilder<TB;>;"
    return-object v0
.end method
