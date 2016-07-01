.class Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$2;
.super Ljava/lang/Object;
.source "EmbeddedTextContextMenuContent.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->lambda$new$350(Ljavafx/beans/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$2;->this$0:Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$2;
    move-object v1, p1

    .local v1, "arg0":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent$2;->this$0:Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/EmbeddedTextContextMenuContent;->requestLayout()V

    .line 74
    return-void
.end method
