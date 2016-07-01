.class final Lcom/sun/javafx/tk/quantum/EmbeddedStage;
.super Lcom/sun/javafx/tk/quantum/GlassStage;
.source "EmbeddedStage.java"

# interfaces
.implements Lcom/sun/javafx/embed/EmbeddedStageInterface;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private host:Lcom/sun/javafx/embed/HostInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sun/javafx/tk/quantum/EmbeddedStage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/javafx/embed/HostInterface;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, p1

    .local v1, "host":Lcom/sun/javafx/embed/HostInterface;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/GlassStage;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->host:Lcom/sun/javafx/embed/HostInterface;

    .line 46
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->lambda$notifyStageListener$304(Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/EmbeddedStage;Ljava/lang/Runnable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->lambda$notifyStageListenerLater$305(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/EmbeddedStage;II)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->lambda$setLocation$306(II)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/EmbeddedStage;II)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->lambda$setSize$307(II)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/EmbeddedStage;ZI)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->lambda$setFocused$308(ZI)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/tk/quantum/EmbeddedStage;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->lambda$focusUngrab$309()V

    return-void
.end method

.method private synthetic lambda$focusUngrab$309()V
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    if-eqz v1, :cond_0

    .line 262
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKStageListener;->focusUngrab()V

    .line 264
    :cond_0
    return-void
.end method

.method private static synthetic lambda$notifyStageListener$304(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 203
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "r":Ljava/lang/Runnable;
    return-object v0
.end method

.method private synthetic lambda$notifyStageListenerLater$305(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setFocused$308(ZI)V
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "focused":Z
    move v2, p2

    .local v2, "focusCause":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    if-eqz v3, :cond_0

    .line 246
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    move v4, v1

    move v5, v2

    .line 247
    invoke-static {v5}, Lcom/sun/javafx/embed/AbstractEvents;->focusCauseToPeerFocusCause(I)Lcom/sun/javafx/tk/FocusCause;

    move-result-object v5

    .line 246
    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/tk/TKStageListener;->changedFocused(ZLcom/sun/javafx/tk/FocusCause;)V

    .line 249
    :cond_0
    return-void
.end method

.method private synthetic lambda$setLocation$306(II)V
    .locals 6

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    if-eqz v3, :cond_0

    .line 216
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    move v4, v1

    int-to-float v4, v4

    move v5, v2

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/tk/TKStageListener;->changedLocation(FF)V

    .line 218
    :cond_0
    return-void
.end method

.method private synthetic lambda$setSize$307(II)V
    .locals 6

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    if-eqz v3, :cond_0

    .line 231
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    move v4, v1

    int-to-float v4, v4

    move v5, v2

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/tk/TKStageListener;->changedSize(FF)V

    .line 233
    :cond_0
    return-void
.end method

.method private notifyStageListener(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v3

    move-object v2, v3

    .line 201
    .local v2, "acc":Ljava/security/AccessControlContext;
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/EmbeddedStage$$Lambda$1;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    .line 205
    return-void
.end method

.method private notifyStageListenerLater(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedStage$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedStage;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method


# virtual methods
.method public createTKScene(ZZLjava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKScene;
    .locals 11

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "depthBuffer":Z
    move v2, p2

    .local v2, "msaa":Z
    move-object v3, p3

    .local v3, "acc":Ljava/security/AccessControlContext;
    new-instance v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->host:Lcom/sun/javafx/embed/HostInterface;

    move v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;-><init>(Lcom/sun/javafx/embed/HostInterface;ZZ)V

    move-object v4, v5

    .line 53
    .local v4, "scene":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->setSecurityContext(Ljava/security/AccessControlContext;)V

    .line 54
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    return-object v0
.end method

.method public focusUngrab()V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedStage$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedStage;)Ljava/lang/Runnable;

    move-result-object v2

    move-object v1, v2

    .line 265
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->isFxUserThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListener(Ljava/lang/Runnable;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListenerLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getRenderScale()F
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v2

    move-object v1, v2

    .line 89
    .local v1, "scene":Lcom/sun/javafx/tk/TKScene;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    if-eqz v2, :cond_0

    .line 90
    move-object v2, v1

    check-cast v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->getRenderScale()F

    move-result v2

    move v0, v2

    .line 92
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    move v0, v2

    goto :goto_0
.end method

.method public getUIScale()F
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    return v0
.end method

.method public grabFocus()Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->host:Lcom/sun/javafx/embed/HostInterface;

    invoke-interface {v1}, Lcom/sun/javafx/embed/HostInterface;->grabFocus()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    return v0
.end method

.method public releaseInput()V
    .locals 5

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestFocus()V
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->host:Lcom/sun/javafx/embed/HostInterface;

    invoke-interface {v1}, Lcom/sun/javafx/embed/HostInterface;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/tk/quantum/GlassStage;->requestFocus()V

    .line 175
    goto :goto_0
.end method

.method public requestInput(Ljava/lang/String;IDDDDDDDDDDDDDD)V
    .locals 37

    .prologue
    .line 277
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object/from16 v2, p1

    .local v2, "text":Ljava/lang/String;
    move/from16 v3, p2

    .local v3, "type":I
    move-wide/from16 v4, p3

    .local v4, "width":D
    move-wide/from16 v6, p5

    .local v6, "height":D
    move-wide/from16 v8, p7

    .local v8, "Mxx":D
    move-wide/from16 v10, p9

    .local v10, "Mxy":D
    move-wide/from16 v12, p11

    .local v12, "Mxz":D
    move-wide/from16 v14, p13

    .local v14, "Mxt":D
    move-wide/from16 v16, p15

    .local v16, "Myx":D
    move-wide/from16 v18, p17

    .local v18, "Myy":D
    move-wide/from16 v20, p19

    .local v20, "Myz":D
    move-wide/from16 v22, p21

    .local v22, "Myt":D
    move-wide/from16 v24, p23

    .local v24, "Mzx":D
    move-wide/from16 v26, p25

    .local v26, "Mzy":D
    move-wide/from16 v28, p27

    .local v28, "Mzz":D
    move-wide/from16 v30, p29

    .local v30, "Mzt":D
    new-instance v32, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v35, v32

    move-object/from16 v32, v35

    move-object/from16 v33, v35

    const-string v34, "Not supported yet."

    invoke-direct/range {v33 .. v34}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v32
.end method

.method public setAlwaysOnTop(Z)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "alwaysOnTop":Z
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_0

    .line 151
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmbeddedScene.setAlwaysOnTop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public setBounds(FFZZFFFFFF)V
    .locals 17

    .prologue
    .line 70
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move/from16 v3, p3

    .local v3, "xSet":Z
    move/from16 v4, p4

    .local v4, "ySet":Z
    move/from16 v5, p5

    .local v5, "w":F
    move/from16 v6, p6

    .local v6, "h":F
    move/from16 v7, p7

    .local v7, "cw":F
    move/from16 v8, p8

    .local v8, "ch":F
    move/from16 v9, p9

    .local v9, "xGravity":F
    move/from16 v10, p10

    .local v10, "yGravity":F
    sget-boolean v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v13, :cond_0

    .line 71
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EmbeddedStage.setBounds: x="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " y="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " xSet="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ySet="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " w="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " h="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cw="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ch="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_0
    move v13, v5

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    move v13, v5

    :goto_0
    move v11, v13

    .line 75
    .local v11, "newW":F
    move v13, v6

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    move v13, v6

    :goto_1
    move v12, v13

    .line 76
    .local v12, "newH":F
    move v13, v11

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    move v13, v12

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 77
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->host:Lcom/sun/javafx/embed/HostInterface;

    move v14, v11

    float-to-int v14, v14

    move v15, v12

    float-to-int v15, v15

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/embed/HostInterface;->setPreferredSize(II)V

    .line 79
    :cond_1
    return-void

    .line 74
    .end local v11    # "newW":F
    .end local v12    # "newH":F
    :cond_2
    move v13, v7

    goto :goto_0

    .line 75
    .restart local v11    # "newW":F
    :cond_3
    move v13, v8

    goto :goto_1
.end method

.method public setFocused(ZI)V
    .locals 7

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "focused":Z
    move v2, p2

    .local v2, "focusCause":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/EmbeddedStage$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedStage;ZI)Ljava/lang/Runnable;

    move-result-object v4

    move-object v3, v4

    .line 251
    .local v3, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->isFxUserThread()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListener(Ljava/lang/Runnable;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListenerLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "fullScreen":Z
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_0

    .line 165
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmbeddedStage.setFullScreen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setIconified(Z)V
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "iconified":Z
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_0

    .line 137
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmbeddedScene.setIconified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setIcons(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, p1

    .local v1, "icons":Ljava/util/List;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_0

    .line 112
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "EmbeddedStage.setIcons"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setLocation(II)V
    .locals 7

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/EmbeddedStage$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedStage;II)Ljava/lang/Runnable;

    move-result-object v4

    move-object v3, v4

    .line 220
    .local v3, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->isFxUserThread()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListener(Ljava/lang/Runnable;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListenerLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMaximized(Z)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "maximized":Z
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmbeddedScene.setMaximized "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setMaximumSize(II)V
    .locals 0
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 101
    return-void
.end method

.method public setMinimumSize(II)V
    .locals 0
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .prologue
    .line 97
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "opacity"    # F

    .prologue
    .line 132
    return-void
.end method

.method protected setPlatformEnabled(Z)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassStage;->setPlatformEnabled(Z)V

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->host:Lcom/sun/javafx/embed/HostInterface;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/embed/HostInterface;->setEnabled(Z)V

    .line 107
    return-void
.end method

.method public setRTL(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 286
    return-void
.end method

.method public setResizable(Z)V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "resizable":Z
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_0

    .line 158
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmbeddedStage.setResizable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public setScene(Lcom/sun/javafx/tk/TKScene;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/TKScene;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 60
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 62
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassStage;->setScene(Lcom/sun/javafx/tk/TKScene;)V

    .line 63
    return-void
.end method

.method public setSize(II)V
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/EmbeddedStage$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedStage;II)Ljava/lang/Runnable;

    move-result-object v4

    move-object v3, v4

    .line 235
    .local v3, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->isFxUserThread()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListener(Ljava/lang/Runnable;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->notifyStageListenerLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_0

    .line 119
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmbeddedStage.setTitle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->host:Lcom/sun/javafx/embed/HostInterface;

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    :goto_0
    invoke-interface {v2, v3}, Lcom/sun/javafx/embed/HostInterface;->setEmbeddedStage(Lcom/sun/javafx/embed/EmbeddedStageInterface;)V

    .line 126
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassStage;->setVisible(Z)V

    .line 127
    return-void

    .line 125
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toBack()V
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "EmbeddedStage.toBack"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method public toFront()V
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "EmbeddedStage.toFront"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method public ungrabFocus()V
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->host:Lcom/sun/javafx/embed/HostInterface;

    invoke-interface {v1}, Lcom/sun/javafx/embed/HostInterface;->ungrabFocus()V

    .line 197
    return-void
.end method
