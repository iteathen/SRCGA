.class public Lcom/sun/javafx/runtime/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# static fields
.field private static final BUILD_TIMESTAMP:Ljava/lang/String; = "Thu Mar 31 10:01:10 CEST 2016"

.field private static final HUDSON_BUILD_NUMBER:Ljava/lang/String; = "0000"

.field private static final HUDSON_JOB_NAME:Ljava/lang/String; = "not_hudson"

.field private static final PRODUCT_NAME:Ljava/lang/String; = "OpenJFX"

.field private static final PROMOTED_BUILD_NUMBER:Ljava/lang/String; = "00"

.field private static final RAW_VERSION:Ljava/lang/String; = "8.0.72"

.field private static final RELEASE_MILESTONE:Ljava/lang/String; = "ea"

.field private static final RELEASE_NAME:Ljava/lang/String; = "8u72"

.field private static final RUNTIME_VERSION:Ljava/lang/String;

.field private static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 139
    const-string v1, "8.0.72"

    move-object v0, v1

    .line 144
    .local v0, "tmpVersion":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/runtime/VersionInfo;->getReleaseMilestone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-ea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 147
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/runtime/VersionInfo;->VERSION:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/sun/javafx/runtime/VersionInfo;->getHudsonJobName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-b00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 156
    :goto_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/runtime/VersionInfo;->RUNTIME_VERSION:Ljava/lang/String;

    .line 157
    return-void

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Thu Mar 31 10:01:10 CEST 2016)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/VersionInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "Thu Mar 31 10:01:10 CEST 2016"

    return-object v0
.end method

.method public static getHudsonBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "0000"

    return-object v0
.end method

.method public static getHudsonJobName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    const-string v0, "not_hudson"

    const-string v1, "not_hudson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, ""

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "not_hudson"

    goto :goto_0
.end method

.method public static getReleaseMilestone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const-string v0, "ea"

    const-string v1, "fcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, ""

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ea"

    goto :goto_0
.end method

.method public static getRuntimeVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/sun/javafx/runtime/VersionInfo;->RUNTIME_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/sun/javafx/runtime/VersionInfo;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized setupSystemProperties()V
    .locals 3

    .prologue
    .line 167
    const-class v2, Lcom/sun/javafx/runtime/VersionInfo;

    monitor-enter v2

    :try_start_0
    const-string v0, "javafx.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    const-string v0, "javafx.version"

    invoke-static {}, Lcom/sun/javafx/runtime/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v0, "javafx.runtime.version"

    invoke-static {}, Lcom/sun/javafx/runtime/VersionInfo;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 171
    :cond_0
    monitor-exit v2

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
