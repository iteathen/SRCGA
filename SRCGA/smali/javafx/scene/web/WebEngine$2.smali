.class Ljavafx/scene/web/WebEngine$2;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "WebEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebEngine;->javaScriptEnabledProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebEngine;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebEngine;Z)V
    .locals 5

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebEngine;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$2;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$2;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$2;
    const-string v1, "javaScriptEnabled"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$2;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 421
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$2;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v1}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine$2;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/webkit/WebPage;->setJavaScriptEnabled(Z)V

    .line 422
    return-void
.end method
