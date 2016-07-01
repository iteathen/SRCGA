.class final Ljavafx/scene/web/WebEngine$DocumentProperty;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "WebEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DocumentProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# instance fields
.field private available:Z

.field private document:Lorg/w3c/dom/Document;

.field final synthetic this$0:Ljavafx/scene/web/WebEngine;


# direct methods
.method private constructor <init>(Ljavafx/scene/web/WebEngine;)V
    .locals 4

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V
    .locals 5

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/web/WebEngine;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/web/WebEngine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebEngine$DocumentProperty;-><init>(Ljavafx/scene/web/WebEngine;)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/web/WebEngine$DocumentProperty;Z)V
    .locals 4

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine$DocumentProperty;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/web/WebEngine$DocumentProperty;->invalidate(Z)V

    return-void
.end method

.method private invalidate(Z)V
    .locals 4

    .prologue
    .line 1207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    move v1, p1

    .local v1, "available":Z
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->available:Z

    if-nez v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    .line 1208
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->available:Z

    .line 1209
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->document:Lorg/w3c/dom/Document;

    .line 1210
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine$DocumentProperty;->fireValueChangedEvent()V

    .line 1212
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebEngine$DocumentProperty;->get()Lorg/w3c/dom/Document;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    return-object v0
.end method

.method public get()Lorg/w3c/dom/Document;
    .locals 6

    .prologue
    .line 1215
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    move-object v2, v1

    iget-boolean v2, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->available:Z

    if-nez v2, :cond_0

    .line 1216
    const/4 v2, 0x0

    move-object v1, v2

    .line 1224
    .end local v1    # "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    :goto_0
    return-object v1

    .line 1218
    .restart local v1    # "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->document:Lorg/w3c/dom/Document;

    if-nez v2, :cond_1

    .line 1219
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/web/WebEngine$DocumentProperty;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v3}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/web/WebEngine$DocumentProperty;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v4}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/webkit/WebPage;->getMainFrame()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/webkit/WebPage;->getDocument(J)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->document:Lorg/w3c/dom/Document;

    .line 1220
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->document:Lorg/w3c/dom/Document;

    if-nez v2, :cond_1

    .line 1221
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->available:Z

    .line 1224
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$DocumentProperty;->document:Lorg/w3c/dom/Document;

    move-object v1, v2

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$DocumentProperty;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    const-string v1, "document"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$DocumentProperty;
    return-object v0
.end method
