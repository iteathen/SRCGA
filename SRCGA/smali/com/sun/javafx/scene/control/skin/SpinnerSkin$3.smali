.class Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;
.super Ljava/lang/Object;
.source "SpinnerSkin.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/Algorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/SpinnerSkin;-><init>(Ljavafx/scene/control/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/SpinnerSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/SpinnerSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;"
    move-object v1, p1

    .local v1, "owner":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, p3

    .local v3, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;"
    return-object v0
.end method

.method public selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;"
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;"
    return-object v0
.end method

.method public selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;"
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;"
    return-object v0
.end method
