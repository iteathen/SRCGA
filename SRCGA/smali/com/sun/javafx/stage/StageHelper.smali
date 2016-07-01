.class public Lcom/sun/javafx/stage/StageHelper;
.super Ljava/lang/Object;
.source "StageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/stage/StageHelper$StageAccessor;
    }
.end annotation


# static fields
.field private static stageAccessor:Lcom/sun/javafx/stage/StageHelper$StageAccessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/StageHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStages()Ljavafx/collections/ObservableList;
    .locals 4
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
    .line 53
    sget-object v1, Lcom/sun/javafx/stage/StageHelper;->stageAccessor:Lcom/sun/javafx/stage/StageHelper$StageAccessor;

    if-nez v1, :cond_0

    .line 56
    :try_start_0
    const-class v1, Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-class v3, Ljavafx/stage/Stage;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    .line 61
    :cond_0
    :goto_0
    sget-object v1, Lcom/sun/javafx/stage/StageHelper;->stageAccessor:Lcom/sun/javafx/stage/StageHelper$StageAccessor;

    invoke-interface {v1}, Lcom/sun/javafx/stage/StageHelper$StageAccessor;->getStages()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 57
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static initSecurityDialog(Ljavafx/stage/Stage;Z)V
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "stage":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "securityDialog":Z
    sget-object v2, Lcom/sun/javafx/stage/StageHelper;->stageAccessor:Lcom/sun/javafx/stage/StageHelper$StageAccessor;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/stage/StageHelper$StageAccessor;->initSecurityDialog(Ljavafx/stage/Stage;Z)V

    .line 66
    return-void
.end method

.method public static setStageAccessor(Lcom/sun/javafx/stage/StageHelper$StageAccessor;)V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "a":Lcom/sun/javafx/stage/StageHelper$StageAccessor;
    sget-object v1, Lcom/sun/javafx/stage/StageHelper;->stageAccessor:Lcom/sun/javafx/stage/StageHelper$StageAccessor;

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Stage accessor already set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/stage/StageHelper;->stageAccessor:Lcom/sun/javafx/stage/StageHelper$StageAccessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 73
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/stage/StageHelper;->stageAccessor:Lcom/sun/javafx/stage/StageHelper$StageAccessor;

    .line 74
    return-void
.end method
