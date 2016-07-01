.class Ljavafx/scene/Scene$DragSourceListener;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKDragSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragSourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 3306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DragSourceListener;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragDropEnd(DDDDLjavafx/scene/input/TransferMode;)V
    .locals 29

    .prologue
    .line 3312
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DragSourceListener;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "screenX":D
    move-wide/from16 v7, p7

    .local v7, "screenY":D
    move-object/from16 v9, p9

    .local v9, "transferMode":Ljavafx/scene/input/TransferMode;
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-eqz v12, :cond_1

    .line 3313
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v12}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v12

    if-nez v12, :cond_0

    .line 3314
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v28, v12

    move-object/from16 v12, v28

    move-object/from16 v13, v28

    const-string v14, "dndGesture.dragboard is null in dragDropEnd"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3316
    :cond_0
    new-instance v12, Ljavafx/scene/input/DragEvent;

    move-object/from16 v28, v12

    move-object/from16 v12, v28

    move-object/from16 v13, v28

    sget-object v14, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    move-object v15, v0

    iget-object v15, v15, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    iget-object v15, v15, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 3317
    invoke-static {v15}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v15

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    move-object/from16 v24, v9

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v13 .. v27}, Ljavafx/scene/input/DragEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v10, v12

    .line 3322
    .local v10, "dragEvent":Ljavafx/scene/input/DragEvent;
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v12}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    .line 3324
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v13, v10

    invoke-static {v12, v13}, Ljavafx/scene/Scene$DnDGesture;->access$6800(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3326
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v12}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    .line 3327
    .line 3328
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    const/4 v13, 0x0

    iput-object v13, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 3330
    .end local v10    # "dragEvent":Ljavafx/scene/input/DragEvent;
    :cond_1
    return-void

    .line 3326
    .restart local v10    # "dragEvent":Ljavafx/scene/input/DragEvent;
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$DragSourceListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v12}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    move-object v12, v11

    throw v12
.end method
