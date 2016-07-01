.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$1;
.super Ljava/lang/Object;
.source "TabPaneSkin.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)V
    .locals 4

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljava/lang/String;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/control/Tab;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v2

    .line 1130
    return-void
.end method
