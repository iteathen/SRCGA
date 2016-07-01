.class public Lcom/sun/glass/ui/ClipboardAssistance;
.super Ljava/lang/Object;
.source "ClipboardAssistance.java"


# instance fields
.field private final cacheData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final clipboard:Lcom/sun/glass/ui/Clipboard;

.field private supportedActions:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v1, p1

    .local v1, "cipboardName":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    .line 33
    move-object v2, v0

    const v3, 0x4fffffff    # 8.5899341E9f

    iput v3, v2, Lcom/sun/glass/ui/ClipboardAssistance;->supportedActions:I

    .line 40
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 41
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/glass/ui/Clipboard;->get(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    .line 42
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Clipboard;->add(Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 43
    return-void
.end method


# virtual methods
.method public actionPerformed(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 136
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 50
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Clipboard;->remove(Lcom/sun/glass/ui/ClipboardAssistance;)V

    .line 51
    return-void
.end method

.method public contentChanged()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public emptyCache()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 67
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 68
    return-void
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 59
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/ClipboardAssistance;->supportedActions:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/glass/ui/Clipboard;->flush(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V

    .line 60
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 95
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Clipboard;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/ClipboardAssistance;
    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 140
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Clipboard;->getMimeTypes()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/ClipboardAssistance;
    return-object v0
.end method

.method public getSupportedSourceActions()I
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 114
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Clipboard;->getSupportedSourceActions()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/ClipboardAssistance;
    return v0
.end method

.method public isCacheEmpty()Z
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 72
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/ClipboardAssistance;
    return v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 84
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/ClipboardAssistance;->cacheData:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    return-void
.end method

.method public setSupportedActions(I)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    move v1, p1

    .local v1, "supportedActions":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 105
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/ClipboardAssistance;->supportedActions:I

    .line 106
    return-void
.end method

.method public setTargetAction(I)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    move v1, p1

    .local v1, "actionDone":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 123
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Clipboard;->setTargetAction(I)V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/ClipboardAssistance;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClipboardAssistance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/ClipboardAssistance;->clipboard:Lcom/sun/glass/ui/Clipboard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/ClipboardAssistance;
    return-object v0
.end method
