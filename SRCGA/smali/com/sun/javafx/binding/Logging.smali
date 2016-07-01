.class public Lcom/sun/javafx/binding/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/Logging$LoggerHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/Logging;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 37
    # getter for: Lcom/sun/javafx/binding/Logging$LoggerHolder;->INSTANCE:Lsun/util/logging/PlatformLogger;
    invoke-static {}, Lcom/sun/javafx/binding/Logging$LoggerHolder;->access$000()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    return-object v0
.end method
