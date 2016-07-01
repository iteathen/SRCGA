.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;
.super Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
.source "FXVKSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/FXVKSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperKey"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 824
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;
    move-object v1, p1

    move-object v2, p2

    .local v2, "letter":Ljava/lang/String;
    move-object v3, p3

    .local v3, "code":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    .line 825
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;->chars:Ljava/lang/String;

    .line 826
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;->text:Ljavafx/scene/text/Text;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 827
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "special"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 828
    sget-boolean v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkLookup:Z

    if-eqz v4, :cond_0

    .line 829
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;->setId(Ljava/lang/String;)V

    .line 831
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V
    .locals 9

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
