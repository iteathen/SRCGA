.class Ljavafx/scene/text/Text$6;
.super Ljavafx/css/StyleableObjectProperty;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text;->boundsTypeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/text/TextBoundsType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/text/Text;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text;Ljavafx/scene/text/TextBoundsType;)V
    .locals 5

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/text/Text;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/text/TextBoundsType;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/text/Text$6;->this$0:Ljavafx/scene/text/Text;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$6;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$6;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/text/Text;",
            "Ljavafx/scene/text/TextBoundsType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$6;
    # getter for: Ljavafx/scene/text/Text$StyleableProperties;->BOUNDS_TYPE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/text/Text$StyleableProperties;->access$600()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$6;
    const-string v1, "boundsType"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$6;
    return-object v0
.end method

.method public invalidated()V
    .locals 5

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$6;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$6;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$700(Ljavafx/scene/text/Text;)Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v3

    move-object v1, v3

    .line 561
    .local v1, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    const/4 v3, 0x0

    move v2, v3

    .line 562
    .local v2, "type":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$6;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$800(Ljavafx/scene/text/Text;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljavafx/scene/text/TextBoundsType;->LOGICAL_VERTICAL_CENTER:Ljavafx/scene/text/TextBoundsType;

    if-ne v3, v4, :cond_0

    .line 563
    move v3, v2

    const/16 v4, 0x4000

    or-int/lit16 v3, v3, 0x4000

    move v2, v3

    .line 565
    :cond_0
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Lcom/sun/javafx/scene/text/TextLayout;->setBoundsType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$6;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$900(Ljavafx/scene/text/Text;)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$6;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v3}, Ljavafx/scene/text/Text;->impl_geomChanged()V

    goto :goto_0
.end method
