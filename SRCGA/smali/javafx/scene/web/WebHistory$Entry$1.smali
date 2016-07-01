.class Ljavafx/scene/web/WebHistory$Entry$1;
.super Ljava/lang/Object;
.source "WebHistory.java"

# interfaces
.implements Lcom/sun/webkit/event/WCChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebHistory$Entry;-><init>(Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/web/WebHistory$Entry;

.field final synthetic val$entry:Lcom/sun/webkit/BackForwardList$Entry;

.field final synthetic val$this$0:Ljavafx/scene/web/WebHistory;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebHistory$Entry;Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry$1;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/web/WebHistory$Entry;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/web/WebHistory$Entry$1;->this$1:Ljavafx/scene/web/WebHistory$Entry;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/web/WebHistory$Entry$1;->val$this$0:Ljavafx/scene/web/WebHistory;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/web/WebHistory$Entry$1;->val$entry:Lcom/sun/webkit/BackForwardList$Entry;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged(Lcom/sun/webkit/event/WCChangeEvent;)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$Entry$1;
    move-object v1, p1

    .local v1, "e":Lcom/sun/webkit/event/WCChangeEvent;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$Entry$1;->val$entry:Lcom/sun/webkit/BackForwardList$Entry;

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList$Entry;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 94
    .local v2, "_title":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$Entry$1;->this$1:Ljavafx/scene/web/WebHistory$Entry;

    invoke-virtual {v5}, Ljavafx/scene/web/WebHistory$Entry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$Entry$1;->this$1:Ljavafx/scene/web/WebHistory$Entry;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory$Entry;->access$000(Ljavafx/scene/web/WebHistory$Entry;)Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 98
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$Entry$1;->val$entry:Lcom/sun/webkit/BackForwardList$Entry;

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList$Entry;->getLastVisitedDate()Ljava/util/Date;

    move-result-object v4

    move-object v3, v4

    .line 100
    .local v3, "_date":Ljava/util/Date;
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$Entry$1;->this$1:Ljavafx/scene/web/WebHistory$Entry;

    invoke-virtual {v5}, Ljavafx/scene/web/WebHistory$Entry;->getLastVisitedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 101
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$Entry$1;->this$1:Ljavafx/scene/web/WebHistory$Entry;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory$Entry;->access$100(Ljavafx/scene/web/WebHistory$Entry;)Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 103
    :cond_2
    return-void
.end method
