.class Ljavafx/scene/text/TextFlow$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "TextFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/TextFlow;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/scene/text/TextFlow;


# direct methods
.method constructor <init>(Ljavafx/scene/text/TextFlow;Ljavafx/scene/text/TextAlignment;)V
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/text/TextFlow;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/text/TextAlignment;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/text/TextFlow$1;->this$0:Ljavafx/scene/text/TextFlow;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow$1;->this$0:Ljavafx/scene/text/TextFlow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/text/TextFlow;",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$1;
    # getter for: Ljavafx/scene/text/TextFlow$StyleableProperties;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/text/TextFlow$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$1;
    const-string v1, "textAlignment"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 5

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$1;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/text/TextFlow$1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/text/TextAlignment;

    move-object v1, v3

    .line 387
    .local v1, "align":Ljavafx/scene/text/TextAlignment;
    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    move-object v1, v3

    .line 388
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/TextFlow$1;->this$0:Ljavafx/scene/text/TextFlow;

    invoke-virtual {v3}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v3

    move-object v2, v3

    .line 389
    .local v2, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/text/TextAlignment;->ordinal()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/scene/text/TextLayout;->setAlignment(I)Z

    move-result v3

    .line 390
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/TextFlow$1;->this$0:Ljavafx/scene/text/TextFlow;

    invoke-virtual {v3}, Ljavafx/scene/text/TextFlow;->requestLayout()V

    .line 391
    return-void
.end method
