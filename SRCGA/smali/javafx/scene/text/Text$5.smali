.class Ljavafx/scene/text/Text$5;
.super Ljavafx/css/StyleableObjectProperty;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text;->fontProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/text/Font;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/text/Text;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text;Ljavafx/scene/text/Font;)V
    .locals 5

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/text/Text;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/text/Font;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/text/Text$5;->this$0:Ljavafx/scene/text/Text;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$5;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$5;
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
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$5;
    # getter for: Ljavafx/scene/text/Text$StyleableProperties;->FONT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/text/Text$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$5;
    const-string v1, "font"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$5;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$5;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v1}, Ljavafx/scene/text/Text;->access$200(Ljavafx/scene/text/Text;)V

    .line 502
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$5;->this$0:Ljavafx/scene/text/Text;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->TEXT_FONT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/text/Text;->access$400(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 503
    return-void
.end method
