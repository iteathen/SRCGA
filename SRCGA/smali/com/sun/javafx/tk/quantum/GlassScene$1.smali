.class Lcom/sun/javafx/tk/quantum/GlassScene$1;
.super Lcom/sun/glass/ui/ClipboardAssistance;
.source "GlassScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/GlassScene;->createDragboard(Z)Lcom/sun/javafx/tk/TKClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/GlassScene;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/GlassScene;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, p2

    .local v2, "cipboardName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/GlassScene$1;->this$0:Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/ClipboardAssistance;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/GlassScene$1;I)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene$1;->lambda$actionPerformed$271(I)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private synthetic lambda$actionPerformed$271(I)Ljava/lang/Void;
    .locals 13

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene$1;
    move v1, p1

    .local v1, "performedAction":I
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene$1;->this$0:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->dragSourceListener:Lcom/sun/javafx/tk/TKDragSourceListener;

    if-eqz v3, :cond_0

    .line 254
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene$1;->this$0:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->dragSourceListener:Lcom/sun/javafx/tk/TKDragSourceListener;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move v12, v1

    .line 255
    invoke-static {v12}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->clipboardActionToTransferMode(I)Ljavafx/scene/input/TransferMode;

    move-result-object v12

    .line 254
    invoke-interface/range {v3 .. v12}, Lcom/sun/javafx/tk/TKDragSourceListener;->dragDropEnd(DDDDLjavafx/scene/input/TransferMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->releaseCurrentDragboard()V

    .line 259
    .line 260
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene$1;
    return-object v0

    .line 258
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassScene$1;
    :catchall_0
    move-exception v3

    move-object v2, v3

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->releaseCurrentDragboard()V

    move-object v3, v2

    throw v3
.end method


# virtual methods
.method public actionPerformed(I)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassScene$1;
    move v1, p1

    .local v1, "performedAction":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/glass/ui/ClipboardAssistance;->actionPerformed(I)V

    .line 251
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene$1$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassScene$1;I)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene$1;->this$0:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 261
    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v3

    .line 251
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 262
    return-void
.end method
