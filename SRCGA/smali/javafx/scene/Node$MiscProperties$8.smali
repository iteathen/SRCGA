.class Ljavafx/scene/Node$MiscProperties$8;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$MiscProperties;->disableProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$MiscProperties;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$MiscProperties;Z)V
    .locals 5

    .prologue
    .line 6709
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$8;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$MiscProperties;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$8;->this$1:Ljavafx/scene/Node$MiscProperties;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6717
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$8;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6722
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$8;
    const-string v1, "disable"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$8;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 6712
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$8;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-static {v1}, Ljavafx/scene/Node;->access$500(Ljavafx/scene/Node;)V

    .line 6713
    return-void
.end method
