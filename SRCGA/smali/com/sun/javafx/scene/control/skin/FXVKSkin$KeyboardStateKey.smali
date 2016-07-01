.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;
.super Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
.source "FXVKSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/FXVKSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardStateKey"
.end annotation


# instance fields
.field private final defaultText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

.field private final toggledText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;
    move-object v1, p1

    move-object v2, p2

    .local v2, "defaultText":Ljava/lang/String;
    move-object v3, p3

    .local v3, "toggledText":Ljava/lang/String;
    move-object v4, p4

    .local v4, "id":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)V

    .line 869
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->defaultText:Ljava/lang/String;

    .line 870
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->toggledText:Ljava/lang/String;

    .line 871
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->text:Ljavafx/scene/text/Text;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->defaultText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 872
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkLookup:Z

    if-eqz v5, :cond_0

    move-object v5, v4

    if-eqz v5, :cond_0

    .line 873
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->setId(Ljava/lang/String;)V

    .line 875
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "special"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 876
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V
    .locals 11

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x3":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "x4":Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update(ZZZ)V
    .locals 6

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;
    move v1, p1

    .local v1, "capsDown":Z
    move v2, p2

    .local v2, "shiftDown":Z
    move v3, p3

    .local v3, "isSymbol":Z
    move v4, v3

    if-eqz v4, :cond_0

    .line 882
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->text:Ljavafx/scene/text/Text;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->toggledText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->text:Ljavafx/scene/text/Text;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;->defaultText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
