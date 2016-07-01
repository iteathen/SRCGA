.class final Lsun/util/logging/LoggingSupport$2;
.super Ljava/lang/Object;
.source "LoggingSupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/LoggingSupport$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/LoggingSupport$2;
    move-object v1, v0

    invoke-virtual {v1}, Lsun/util/logging/LoggingSupport$2;->run()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lsun/util/logging/LoggingSupport$2;
    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/LoggingSupport$2;
    const-string v1, "java.util.logging.SimpleFormatter.format"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lsun/util/logging/LoggingSupport$2;
    return-object v0
.end method
