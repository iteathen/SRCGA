.class public interface abstract Lcom/sun/javafx/stage/StageHelper$StageAccessor;
.super Ljava/lang/Object;
.source "StageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/stage/StageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StageAccessor"
.end annotation


# virtual methods
.method public abstract getStages()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Stage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initSecurityDialog(Ljavafx/stage/Stage;Z)V
.end method
