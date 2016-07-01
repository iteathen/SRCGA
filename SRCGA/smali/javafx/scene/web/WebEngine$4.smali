.class Ljavafx/scene/web/WebEngine$4;
.super Ljavafx/beans/property/StringPropertyBase;
.source "WebEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebEngine;->userAgentProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebEngine;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebEngine;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebEngine;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$4;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/StringPropertyBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$4;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$4;
    const-string v1, "userAgent"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$4;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 525
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$4;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v1}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine$4;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/webkit/WebPage;->setUserAgent(Ljava/lang/String;)V

    .line 526
    return-void
.end method
