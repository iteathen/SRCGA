.class Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;
.super Ljavafx/beans/binding/ObjectBinding;
.source "TextInputControlSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;-><init>(Ljavafx/scene/control/TextInputControl;Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/binding/ObjectBinding",
        "<",
        "Lcom/sun/javafx/tk/FontMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

.field final synthetic val$textInput:Ljavafx/scene/control/TextInputControl;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V
    .locals 9

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;->val$textInput:Ljavafx/scene/control/TextInputControl;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 269
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;->val$textInput:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Lcom/sun/javafx/tk/FontMetrics;
    .locals 3

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->invalidateMetrics()V

    .line 272
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->getFontLoader()Lcom/sun/javafx/tk/FontLoader;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;->val$textInput:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getFont()Ljavafx/scene/text/Font;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/FontLoader;->getFontMetrics(Ljavafx/scene/text/Font;)Lcom/sun/javafx/tk/FontMetrics;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;"
    return-object v0
.end method

.method protected bridge synthetic computeValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;->computeValue()Lcom/sun/javafx/tk/FontMetrics;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$6;"
    return-object v0
.end method
