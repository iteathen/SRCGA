.class public Lcom/sun/scenario/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final SETTINGS_KEY:Ljava/lang/Object;


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "SettingsKey"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/scenario/Settings;->SETTINGS_KEY:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lcom/sun/scenario/Settings;->settings:Ljava/util/Map;

    .line 50
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/scenario/Settings;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 233
    return-void
.end method

.method public static addPropertyChangeListener(Ljavafx/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "pcl":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sun/scenario/Settings;->getInstance()Lcom/sun/scenario/Settings;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/sun/scenario/Settings;->addPropertyChangeListenerImpl(Ljavafx/util/Callback;)V

    .line 202
    return-void
.end method

.method private addPropertyChangeListenerImpl(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, p1

    .local v1, "pcl":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/Settings;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 206
    return-void
.end method

.method private checkKeyArg(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    const-string v2, ""

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "null key not allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_1
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/sun/scenario/Settings;->getInstance()Lcom/sun/scenario/Settings;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/sun/scenario/Settings;->getImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/sun/scenario/Settings;->getInstance()Lcom/sun/scenario/Settings;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/sun/scenario/Settings;->getBooleanImpl(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move v1, p1

    .local v1, "defaultVal":Z
    invoke-static {}, Lcom/sun/scenario/Settings;->getInstance()Lcom/sun/scenario/Settings;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/Settings;->getBooleanImpl(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method private getBooleanImpl(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/scenario/Settings;->getImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 136
    .local v2, "value":Ljava/lang/String;
    const-string v3, "true"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/scenario/Settings;
    return v0
.end method

.method private getBooleanImpl(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "defaultVal":Z
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/scenario/Settings;->getImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 155
    .local v3, "value":Ljava/lang/String;
    move v5, v2

    move v4, v5

    .line 156
    .local v4, "retVal":Z
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 157
    const-string v5, "false"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    const/4 v5, 0x0

    move v4, v5

    .line 163
    :cond_0
    :goto_0
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/sun/scenario/Settings;
    return v0

    .line 159
    .restart local v0    # "this":Lcom/sun/scenario/Settings;
    :cond_1
    const-string v5, "true"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const/4 v5, 0x1

    move v4, v5

    goto :goto_0
.end method

.method private getImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/scenario/Settings;->checkKeyArg(Ljava/lang/String;)V

    .line 111
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/Settings;->settings:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 112
    .local v2, "retVal":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 114
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 116
    .line 118
    :cond_0
    :goto_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/Settings;
    return-object v0

    .line 115
    .restart local v0    # "this":Lcom/sun/scenario/Settings;
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method private static declared-synchronized getInstance()Lcom/sun/scenario/Settings;
    .locals 7

    .prologue
    .line 62
    const-class v5, Lcom/sun/scenario/Settings;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getContextMap()Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    .line 63
    .local v0, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v2, v0

    sget-object v3, Lcom/sun/scenario/Settings;->SETTINGS_KEY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/Settings;

    move-object v1, v2

    .line 64
    .local v1, "instance":Lcom/sun/scenario/Settings;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Lcom/sun/scenario/Settings;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/scenario/Settings;-><init>()V

    move-object v1, v2

    .line 66
    move-object v2, v0

    sget-object v3, Lcom/sun/scenario/Settings;->SETTINGS_KEY:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 68
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    monitor-exit v5

    return-object v0

    .line 62
    .end local v1    # "instance":Lcom/sun/scenario/Settings;
    .restart local v0    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    throw v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move v1, p1

    .local v1, "defaultVal":I
    invoke-static {}, Lcom/sun/scenario/Settings;->getInstance()Lcom/sun/scenario/Settings;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/Settings;->getIntImpl(Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    .end local v0    # "key":Ljava/lang/String;
    return v0
.end method

.method private getIntImpl(Ljava/lang/String;I)I
    .locals 8

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "defaultVal":I
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/scenario/Settings;->getImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 181
    .local v3, "value":Ljava/lang/String;
    move v6, v2

    move v4, v6

    .line 183
    .local v4, "retVal":I
    move-object v6, v3

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v4, v6

    .line 186
    .line 187
    :goto_0
    move v6, v4

    move v0, v6

    .end local v0    # "this":Lcom/sun/scenario/Settings;
    return v0

    .line 184
    .restart local v0    # "this":Lcom/sun/scenario/Settings;
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_0
.end method

.method public static removePropertyChangeListener(Ljavafx/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "pcl":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sun/scenario/Settings;->getInstance()Lcom/sun/scenario/Settings;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/sun/scenario/Settings;->removePropertyChangeListenerImpl(Ljavafx/util/Callback;)V

    .line 216
    return-void
.end method

.method private removePropertyChangeListenerImpl(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, p1

    .local v1, "pcl":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/Settings;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 220
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    invoke-static {}, Lcom/sun/scenario/Settings;->getInstance()Lcom/sun/scenario/Settings;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/scenario/Settings;->setImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private setImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/Settings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/scenario/Settings;->checkKeyArg(Ljava/lang/String;)V

    .line 88
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/Settings;->settings:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 89
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/Settings;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/util/Callback;

    move-object v4, v5

    .line 90
    .local v4, "l":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    move-object v5, v4

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 91
    goto :goto_0

    .line 92
    .end local v4    # "l":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method
