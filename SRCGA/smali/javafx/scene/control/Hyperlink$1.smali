.class Ljavafx/scene/control/Hyperlink$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Hyperlink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Hyperlink;->visitedProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Hyperlink;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Hyperlink;)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Hyperlink;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Hyperlink$1;->this$0:Ljavafx/scene/control/Hyperlink;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Hyperlink$1;->this$0:Ljavafx/scene/control/Hyperlink;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Hyperlink$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink$1;
    const-string v1, "visited"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Hyperlink$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Hyperlink$1;->this$0:Ljavafx/scene/control/Hyperlink;

    # getter for: Ljavafx/scene/control/Hyperlink;->PSEUDO_CLASS_VISITED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/Hyperlink;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Hyperlink$1;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/Hyperlink;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 114
    return-void
.end method
