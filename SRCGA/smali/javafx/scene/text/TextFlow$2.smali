.class Ljavafx/scene/text/TextFlow$2;
.super Ljavafx/css/StyleableDoubleProperty;
.source "TextFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/TextFlow;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/text/TextFlow;


# direct methods
.method constructor <init>(Ljavafx/scene/text/TextFlow;D)V
    .locals 8

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/text/TextFlow;
    move-wide v2, p2

    .local v2, "initialValue":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/text/TextFlow$2;->this$0:Ljavafx/scene/text/TextFlow;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow$2;->this$0:Ljavafx/scene/text/TextFlow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$2;
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$2;
    # getter for: Ljavafx/scene/text/TextFlow$StyleableProperties;->LINE_SPACING:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/text/TextFlow$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$2;
    const-string v1, "lineSpacing"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 6

    .prologue
    .line 424
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/TextFlow$2;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/text/TextFlow$2;->this$0:Ljavafx/scene/text/TextFlow;

    invoke-virtual {v3}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v3

    move-object v2, v3

    .line 425
    .local v2, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/text/TextFlow$2;->get()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/scene/text/TextLayout;->setLineSpacing(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/text/TextFlow$2;->this$0:Ljavafx/scene/text/TextFlow;

    invoke-virtual {v3}, Ljavafx/scene/text/TextFlow;->requestLayout()V

    .line 428
    :cond_0
    return-void
.end method
