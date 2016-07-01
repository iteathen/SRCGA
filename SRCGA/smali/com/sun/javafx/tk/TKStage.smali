.class public interface abstract Lcom/sun/javafx/tk/TKStage;
.super Ljava/lang/Object;
.source "TKStage.java"


# static fields
.field public static final defaultFullScreenExitKeycombo:Ljavafx/scene/input/KeyCodeCombination;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 213
    new-instance v0, Ljavafx/scene/input/KeyCodeCombination;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    sget-object v2, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    sget-object v4, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    sget-object v5, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    sget-object v6, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    sget-object v7, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-direct/range {v1 .. v7}, Ljavafx/scene/input/KeyCodeCombination;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    sput-object v0, Lcom/sun/javafx/tk/TKStage;->defaultFullScreenExitKeycombo:Ljavafx/scene/input/KeyCodeCombination;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract createTKScene(ZZLjava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKScene;
.end method

.method public abstract getRenderScale()F
.end method

.method public abstract getUIScale()F
.end method

.method public abstract grabFocus()Z
.end method

.method public abstract releaseInput()V
.end method

.method public abstract requestFocus()V
.end method

.method public abstract requestFocus(Lcom/sun/javafx/tk/FocusCause;)V
.end method

.method public abstract requestInput(Ljava/lang/String;IDDDDDDDDDDDDDD)V
.end method

.method public abstract setAlwaysOnTop(Z)V
.end method

.method public abstract setBounds(FFZZFFFFFF)V
.end method

.method public abstract setFullScreen(Z)V
.end method

.method public abstract setIconified(Z)V
.end method

.method public abstract setIcons(Ljava/util/List;)V
.end method

.method public abstract setImportant(Z)V
.end method

.method public abstract setMaximized(Z)V
.end method

.method public abstract setMaximumSize(II)V
.end method

.method public abstract setMinimumSize(II)V
.end method

.method public abstract setOpacity(F)V
.end method

.method public abstract setRTL(Z)V
.end method

.method public abstract setResizable(Z)V
.end method

.method public abstract setScene(Lcom/sun/javafx/tk/TKScene;)V
.end method

.method public abstract setTKStageListener(Lcom/sun/javafx/tk/TKStageListener;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract toBack()V
.end method

.method public abstract toFront()V
.end method

.method public abstract ungrabFocus()V
.end method
