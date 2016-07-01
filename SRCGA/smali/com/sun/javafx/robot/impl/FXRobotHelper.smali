.class public Lcom/sun/javafx/robot/impl/FXRobotHelper;
.super Ljava/lang/Object;
.source "FXRobotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;,
        Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;,
        Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;,
        Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;
    }
.end annotation


# static fields
.field static imageConvertor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;

.field static inputAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;

.field static sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

.field static stageAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/FXRobotHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argbToColor(I)Ljavafx/scene/paint/Color;
    .locals 12

    .prologue
    .line 91
    move v1, p0

    .local v1, "argb":I
    move v7, v1

    const/16 v8, 0x18

    shr-int/lit8 v7, v7, 0x18

    move v2, v7

    .line 92
    .local v2, "a":I
    move v7, v2

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v2, v7

    .line 93
    move v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    move v3, v7

    .line 95
    .local v3, "aa":F
    move v7, v1

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    move v4, v7

    .line 96
    .local v4, "r":I
    move v7, v4

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v4, v7

    .line 98
    move v7, v1

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    move v5, v7

    .line 99
    .local v5, "g":I
    move v7, v5

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v5, v7

    .line 101
    move v7, v1

    move v6, v7

    .line 102
    .local v6, "b":I
    move v7, v6

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v6, v7

    .line 104
    move v7, v4

    move v8, v5

    move v9, v6

    move v10, v3

    float-to-double v10, v10

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/paint/Color;->rgb(IIID)Ljavafx/scene/paint/Color;

    move-result-object v7

    move-object v1, v7

    .end local v1    # "argb":I
    return-object v1
.end method

.method public static getChildren(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Parent;",
            ")",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "p":Ljavafx/scene/Parent;
    sget-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    if-nez v1, :cond_0

    .line 68
    :cond_0
    sget-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;->getChildren(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "p":Ljavafx/scene/Parent;
    return-object v0
.end method

.method public static getStages()Ljavafx/collections/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Stage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/sun/javafx/robot/impl/FXRobotHelper;->stageAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;

    if-nez v0, :cond_0

    .line 83
    :cond_0
    sget-object v0, Lcom/sun/javafx/robot/impl/FXRobotHelper;->stageAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;

    invoke-virtual {v0}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;->getStages()Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method public static setImageConvertor(Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;)V
    .locals 5

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "ic":Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;
    sget-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->imageConvertor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Image convertor is already set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/robot/impl/FXRobotHelper;->imageConvertor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 137
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->imageConvertor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;

    .line 138
    return-void
.end method

.method public static setInputAccessor(Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;)V
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "a":Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;
    sget-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->inputAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Input accessor is already set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/robot/impl/FXRobotHelper;->inputAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 115
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->inputAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;

    .line 116
    return-void
.end method

.method public static setSceneAccessor(Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "a":Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;
    sget-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Scene accessor is already set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 126
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    .line 127
    return-void
.end method

.method public static setStageAccessor(Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;)V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "a":Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;
    sget-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->stageAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Stage accessor already set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/robot/impl/FXRobotHelper;->stageAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 148
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/robot/impl/FXRobotHelper;->stageAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;

    .line 149
    return-void
.end method
