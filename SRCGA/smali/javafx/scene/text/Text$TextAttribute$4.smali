.class Ljavafx/scene/text/Text$TextAttribute$4;
.super Ljavafx/css/StyleableObjectProperty;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text$TextAttribute;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/text/TextAlignment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/text/Text$TextAttribute;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text$TextAttribute;Ljavafx/scene/text/TextAlignment;)V
    .locals 5

    .prologue
    .line 1613
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$4;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/text/TextAlignment;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/text/Text$TextAttribute$4;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$4;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$4;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 1617
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$4;
    # getter for: Ljavafx/scene/text/Text$StyleableProperties;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/text/Text$StyleableProperties;->access$3600()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1615
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$4;
    const-string v1, "textAlignment"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 5

    .prologue
    .line 1620
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$4;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute$4;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$1000(Ljavafx/scene/text/Text;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1621
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/text/Text$TextAttribute$4;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/text/TextAlignment;

    move-object v1, v3

    .line 1622
    .local v1, "alignment":Ljavafx/scene/text/TextAlignment;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1623
    # getter for: Ljavafx/scene/text/Text;->DEFAULT_TEXT_ALIGNMENT:Ljavafx/scene/text/TextAlignment;
    invoke-static {}, Ljavafx/scene/text/Text;->access$3500()Ljavafx/scene/text/TextAlignment;

    move-result-object v3

    move-object v1, v3

    .line 1625
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute$4;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$700(Ljavafx/scene/text/Text;)Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v3

    move-object v2, v3

    .line 1626
    .local v2, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/text/TextAlignment;->ordinal()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/scene/text/TextLayout;->setAlignment(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1627
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute$4;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$900(Ljavafx/scene/text/Text;)V

    .line 1630
    .end local v1    # "alignment":Ljavafx/scene/text/TextAlignment;
    .end local v2    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    :cond_1
    return-void
.end method
