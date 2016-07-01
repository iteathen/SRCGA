.class Ljavafx/scene/text/Text$7;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text;->wrappingWidthProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/text/Text;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text;)V
    .locals 4

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/text/Text;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/Text$7;->this$0:Ljavafx/scene/text/Text;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$7;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$7;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$7;
    const-string v1, "wrappingWidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$7;
    return-object v0
.end method

.method public invalidated()V
    .locals 6

    .prologue
    .line 600
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text$7;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/text/Text$7;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$1000(Ljavafx/scene/text/Text;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/text/Text$7;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$700(Ljavafx/scene/text/Text;)Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v3

    move-object v2, v3

    .line 602
    .local v2, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/text/Text$7;->get()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/text/Text$7;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v3}, Ljavafx/scene/text/Text;->access$900(Ljavafx/scene/text/Text;)V

    .line 608
    .end local v2    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    :cond_0
    :goto_0
    return-void

    .line 605
    .restart local v2    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/text/Text$7;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v3}, Ljavafx/scene/text/Text;->impl_geomChanged()V

    goto :goto_0
.end method
