.class public Ljavafx/scene/control/TooltipBuilder;
.super Ljavafx/scene/control/PopupControlBuilder;
.source "TooltipBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/TooltipBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/PopupControlBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private contentDisplay:Ljavafx/scene/control/ContentDisplay;

.field private font:Ljavafx/scene/text/Font;

.field private graphic:Ljavafx/scene/Node;

.field private graphicTextGap:D

.field private text:Ljava/lang/String;

.field private textAlignment:Ljavafx/scene/text/TextAlignment;

.field private textOverrun:Ljavafx/scene/control/OverrunStyle;

.field private wrapText:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/PopupControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/TooltipBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/TooltipBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/TooltipBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TooltipBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TooltipBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TooltipBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/Tooltip;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/control/Tooltip;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/control/PopupControlBuilder;->applyTo(Ljavafx/scene/control/PopupControl;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/control/TooltipBuilder;->__set:I

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

    .line 66
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TooltipBuilder;->contentDisplay:Ljavafx/scene/control/ContentDisplay;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tooltip;->setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TooltipBuilder;->font:Ljavafx/scene/text/Font;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tooltip;->setFont(Ljavafx/scene/text/Font;)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TooltipBuilder;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tooltip;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/TooltipBuilder;->graphicTextGap:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Tooltip;->setGraphicTextGap(D)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TooltipBuilder;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tooltip;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TooltipBuilder;->textAlignment:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tooltip;->setTextAlignment(Ljavafx/scene/text/TextAlignment;)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TooltipBuilder;->textOverrun:Ljavafx/scene/control/OverrunStyle;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tooltip;->setTextOverrun(Ljavafx/scene/control/OverrunStyle;)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/TooltipBuilder;->wrapText:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tooltip;->setWrapText(Z)V

    goto :goto_1

    .line 67
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 56
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
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TooltipBuilder;->build()Ljavafx/scene/control/Tooltip;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/PopupControl;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TooltipBuilder;->build()Ljavafx/scene/control/Tooltip;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/Tooltip;
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/Tooltip;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/Tooltip;-><init>()V

    move-object v1, v2

    .line 162
    .local v1, "x":Ljavafx/scene/control/Tooltip;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TooltipBuilder;->applyTo(Ljavafx/scene/control/Tooltip;)V

    .line 163
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public contentDisplay(Ljavafx/scene/control/ContentDisplay;)Ljavafx/scene/control/TooltipBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ContentDisplay;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ContentDisplay;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TooltipBuilder;->contentDisplay:Ljavafx/scene/control/ContentDisplay;

    .line 76
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/TooltipBuilder;->__set(I)V

    .line 77
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public font(Ljavafx/scene/text/Font;)Ljavafx/scene/control/TooltipBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/Font;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/Font;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TooltipBuilder;->font:Ljavafx/scene/text/Font;

    .line 87
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TooltipBuilder;->__set(I)V

    .line 88
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public graphic(Ljavafx/scene/Node;)Ljavafx/scene/control/TooltipBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TooltipBuilder;->graphic:Ljavafx/scene/Node;

    .line 98
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/TooltipBuilder;->__set(I)V

    .line 99
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public graphicTextGap(D)Ljavafx/scene/control/TooltipBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TooltipBuilder;->graphicTextGap:D

    .line 109
    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljavafx/scene/control/TooltipBuilder;->__set(I)V

    .line 110
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljavafx/scene/control/TooltipBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TooltipBuilder;->text:Ljava/lang/String;

    .line 120
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/control/TooltipBuilder;->__set(I)V

    .line 121
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public textAlignment(Ljavafx/scene/text/TextAlignment;)Ljavafx/scene/control/TooltipBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/TextAlignment;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/TextAlignment;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TooltipBuilder;->textAlignment:Ljavafx/scene/text/TextAlignment;

    .line 131
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/control/TooltipBuilder;->__set(I)V

    .line 132
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public textOverrun(Ljavafx/scene/control/OverrunStyle;)Ljavafx/scene/control/TooltipBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/OverrunStyle;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/OverrunStyle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TooltipBuilder;->textOverrun:Ljavafx/scene/control/OverrunStyle;

    .line 142
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/control/TooltipBuilder;->__set(I)V

    .line 143
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method

.method public wrapText(Z)Ljavafx/scene/control/TooltipBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TooltipBuilder;->wrapText:Z

    .line 153
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/TooltipBuilder;->__set(I)V

    .line 154
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TooltipBuilder;, "Ljavafx/scene/control/TooltipBuilder<TB;>;"
    return-object v0
.end method
