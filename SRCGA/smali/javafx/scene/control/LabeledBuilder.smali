.class public abstract Ljavafx/scene/control/LabeledBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "LabeledBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/LabeledBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private alignment:Ljavafx/geometry/Pos;

.field private contentDisplay:Ljavafx/scene/control/ContentDisplay;

.field private ellipsisString:Ljava/lang/String;

.field private font:Ljavafx/scene/text/Font;

.field private graphic:Ljavafx/scene/Node;

.field private graphicTextGap:D

.field private mnemonicParsing:Z

.field private text:Ljava/lang/String;

.field private textAlignment:Ljavafx/scene/text/TextAlignment;

.field private textFill:Ljavafx/scene/paint/Paint;

.field private textOverrun:Ljavafx/scene/control/OverrunStyle;

.field private underline:Z

.field private wrapText:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/LabeledBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/LabeledBuilder;->__set:I

    .line 44
    return-void
.end method


# virtual methods
.method public alignment(Ljavafx/geometry/Pos;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Pos;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Pos;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->alignment:Ljavafx/geometry/Pos;

    .line 76
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 77
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/control/Labeled;)V
    .locals 8

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/control/Labeled;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 47
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/control/LabeledBuilder;->__set:I

    move v3, v5

    .line 48
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 49
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 50
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 51
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 66
    :goto_1
    goto :goto_0

    .line 52
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->alignment:Ljavafx/geometry/Pos;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setAlignment(Ljavafx/geometry/Pos;)V

    goto :goto_1

    .line 53
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->contentDisplay:Ljavafx/scene/control/ContentDisplay;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V

    goto :goto_1

    .line 54
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->ellipsisString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setEllipsisString(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->font:Ljavafx/scene/text/Font;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setFont(Ljavafx/scene/text/Font;)V

    goto :goto_1

    .line 56
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 57
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/LabeledBuilder;->graphicTextGap:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Labeled;->setGraphicTextGap(D)V

    goto :goto_1

    .line 58
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/LabeledBuilder;->mnemonicParsing:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setMnemonicParsing(Z)V

    goto :goto_1

    .line 59
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->textAlignment:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setTextAlignment(Ljavafx/scene/text/TextAlignment;)V

    goto :goto_1

    .line 61
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->textFill:Ljavafx/scene/paint/Paint;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setTextFill(Ljavafx/scene/paint/Paint;)V

    goto :goto_1

    .line 62
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/LabeledBuilder;->textOverrun:Ljavafx/scene/control/OverrunStyle;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setTextOverrun(Ljavafx/scene/control/OverrunStyle;)V

    goto :goto_1

    .line 63
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/LabeledBuilder;->underline:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setUnderline(Z)V

    goto :goto_1

    .line 64
    :pswitch_c
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/LabeledBuilder;->wrapText:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Labeled;->setWrapText(Z)V

    goto :goto_1

    .line 67
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public contentDisplay(Ljavafx/scene/control/ContentDisplay;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ContentDisplay;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ContentDisplay;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->contentDisplay:Ljavafx/scene/control/ContentDisplay;

    .line 87
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 88
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public ellipsisString(Ljava/lang/String;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->ellipsisString:Ljava/lang/String;

    .line 99
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 100
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public font(Ljavafx/scene/text/Font;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/Font;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/Font;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->font:Ljavafx/scene/text/Font;

    .line 110
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 111
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public graphic(Ljavafx/scene/Node;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->graphic:Ljavafx/scene/Node;

    .line 121
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 122
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public graphicTextGap(D)Ljavafx/scene/control/LabeledBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/LabeledBuilder;->graphicTextGap:D

    .line 132
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 133
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public mnemonicParsing(Z)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/LabeledBuilder;->mnemonicParsing:Z

    .line 143
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 144
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->text:Ljava/lang/String;

    .line 154
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 155
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public textAlignment(Ljavafx/scene/text/TextAlignment;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/TextAlignment;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/TextAlignment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->textAlignment:Ljavafx/scene/text/TextAlignment;

    .line 165
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 166
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public textFill(Ljavafx/scene/paint/Paint;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Paint;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->textFill:Ljavafx/scene/paint/Paint;

    .line 176
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 177
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public textOverrun(Ljavafx/scene/control/OverrunStyle;)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/OverrunStyle;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/OverrunStyle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/LabeledBuilder;->textOverrun:Ljavafx/scene/control/OverrunStyle;

    .line 187
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 188
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public underline(Z)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/LabeledBuilder;->underline:Z

    .line 198
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 199
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method

.method public wrapText(Z)Ljavafx/scene/control/LabeledBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/LabeledBuilder;->wrapText:Z

    .line 209
    move-object v2, v0

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->__set(I)V

    .line 210
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/LabeledBuilder;, "Ljavafx/scene/control/LabeledBuilder<TB;>;"
    return-object v0
.end method
