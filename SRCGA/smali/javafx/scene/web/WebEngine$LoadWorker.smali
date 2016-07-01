.class final Ljavafx/scene/web/WebEngine$LoadWorker;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Ljavafx/concurrent/Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/concurrent/Worker",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljavafx/beans/property/ReadOnlyStringWrapper;

.field private final progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private final running:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private final state:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/concurrent/Worker$State;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/web/WebEngine;

.field private final title:Ljavafx/beans/property/ReadOnlyStringWrapper;

.field private final totalWorkToBeDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private final value:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final workDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;


# direct methods
.method private constructor <init>(Ljavafx/scene/web/WebEngine;)V
    .locals 11

    .prologue
    .line 1016
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1018
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "state"

    sget-object v8, Ljavafx/concurrent/Worker$State;->READY:Ljavafx/concurrent/Worker$State;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->state:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1030
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "value"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->value:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1037
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "exception"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1044
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "workDone"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->workDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 1051
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "totalWork"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->totalWorkToBeDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 1058
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "progress"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 1070
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "running"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->running:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 1077
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "message"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyStringWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    .line 1084
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "title"

    const-string v8, "WebEngine Loader"

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyStringWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->title:Ljavafx/beans/property/ReadOnlyStringWrapper;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V
    .locals 5

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/web/WebEngine;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/web/WebEngine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebEngine$LoadWorker;-><init>(Ljavafx/scene/web/WebEngine;)V

    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/web/WebEngine$LoadWorker;JILjava/lang/String;Ljava/lang/String;DI)V
    .locals 18

    .prologue
    .line 1016
    move-object/from16 v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-wide/from16 v1, p1

    .local v1, "x1":J
    move/from16 v3, p3

    .local v3, "x2":I
    move-object/from16 v4, p4

    .local v4, "x3":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "x4":Ljava/lang/String;
    move-wide/from16 v6, p6

    .local v6, "x5":D
    move/from16 v8, p8

    .local v8, "x6":I
    move-object v9, v0

    move-wide v10, v1

    move v12, v3

    move-object v13, v4

    move-object v14, v5

    move-wide v15, v6

    move/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Ljavafx/scene/web/WebEngine$LoadWorker;->dispatchLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V

    return-void
.end method

.method static synthetic access$900(Ljavafx/scene/web/WebEngine$LoadWorker;)V
    .locals 2

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/web/WebEngine$LoadWorker;->cancelAndReset()V

    return-void
.end method

.method private cancelAndReset()V
    .locals 4

    .prologue
    .line 1102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebEngine$LoadWorker;->cancel()Z

    move-result v1

    .line 1103
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1104
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 1105
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->totalWorkToBeDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 1106
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->workDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 1107
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 1108
    move-object v1, v0

    sget-object v2, Ljavafx/concurrent/Worker$State;->READY:Ljavafx/concurrent/Worker$State;

    invoke-direct {v1, v2}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateState(Ljavafx/concurrent/Worker$State;)V

    .line 1109
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->running:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 1110
    return-void
.end method

.method private describeError(I)Ljava/lang/Throwable;
    .locals 7

    .prologue
    .line 1158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move v1, p1

    .local v1, "errorCode":I
    const-string v3, "Unknown error"

    move-object v2, v3

    .line 1160
    .local v2, "reason":Ljava/lang/String;
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 1195
    :goto_0
    new-instance v3, Ljava/lang/Throwable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0

    .line 1162
    .restart local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    :pswitch_0
    const-string v3, "Unknown host"

    move-object v2, v3

    .line 1163
    goto :goto_0

    .line 1165
    :pswitch_1
    const-string v3, "Malformed URL"

    move-object v2, v3

    .line 1166
    goto :goto_0

    .line 1168
    :pswitch_2
    const-string v3, "SSL handshake failed"

    move-object v2, v3

    .line 1169
    goto :goto_0

    .line 1171
    :pswitch_3
    const-string v3, "Connection refused by server"

    move-object v2, v3

    .line 1172
    goto :goto_0

    .line 1174
    :pswitch_4
    const-string v3, "Connection reset by server"

    move-object v2, v3

    .line 1175
    goto :goto_0

    .line 1177
    :pswitch_5
    const-string v3, "No route to host"

    move-object v2, v3

    .line 1178
    goto :goto_0

    .line 1180
    :pswitch_6
    const-string v3, "Connection timed out"

    move-object v2, v3

    .line 1181
    goto :goto_0

    .line 1183
    :pswitch_7
    const-string v3, "Permission denied"

    move-object v2, v3

    .line 1184
    goto :goto_0

    .line 1186
    :pswitch_8
    const-string v3, "Invalid response from server"

    move-object v2, v3

    .line 1187
    goto :goto_0

    .line 1189
    :pswitch_9
    const-string v3, "Too many redirects"

    move-object v2, v3

    .line 1190
    goto :goto_0

    .line 1192
    :pswitch_a
    const-string v3, "File not found"

    move-object v2, v3

    goto :goto_0

    .line 1160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private dispatchLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V
    .locals 14

    .prologue
    .line 1115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-wide v1, p1

    .local v1, "frame":J
    move/from16 v3, p3

    .local v3, "state":I
    move-object/from16 v4, p4

    .local v4, "url":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "contentType":Ljava/lang/String;
    move-wide/from16 v6, p6

    .local v6, "workDone":D
    move/from16 v8, p8

    .local v8, "errorCode":I
    move-wide v9, v1

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/web/WebEngine$LoadWorker;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v11}, Ljavafx/scene/web/WebEngine;->access$1600(Ljavafx/scene/web/WebEngine;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    .line 1116
    .line 1155
    :goto_0
    return-void

    .line 1119
    :cond_0
    move v9, v3

    sparse-switch v9, :sswitch_data_0

    .line 1155
    :goto_1
    goto :goto_0

    .line 1121
    :sswitch_0
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 1122
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v10, v4

    invoke-static {v9, v10}, Ljavafx/scene/web/WebEngine;->access$1700(Ljavafx/scene/web/WebEngine;Ljava/lang/String;)V

    .line 1123
    move-object v9, v0

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateProgress(D)V

    .line 1124
    move-object v9, v0

    sget-object v10, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    invoke-direct {v9, v10}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateState(Ljavafx/concurrent/Worker$State;)V

    .line 1125
    move-object v9, v0

    sget-object v10, Ljavafx/concurrent/Worker$State;->RUNNING:Ljavafx/concurrent/Worker$State;

    invoke-direct {v9, v10}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateState(Ljavafx/concurrent/Worker$State;)V

    .line 1126
    goto :goto_1

    .line 1128
    :sswitch_1
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 1129
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->this$0:Ljavafx/scene/web/WebEngine;

    move-object v10, v4

    invoke-static {v9, v10}, Ljavafx/scene/web/WebEngine;->access$1700(Ljavafx/scene/web/WebEngine;Ljava/lang/String;)V

    .line 1130
    goto :goto_1

    .line 1132
    :sswitch_2
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    const-string v10, "Loading complete"

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 1133
    move-object v9, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-direct {v9, v10, v11}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateProgress(D)V

    .line 1134
    move-object v9, v0

    sget-object v10, Ljavafx/concurrent/Worker$State;->SUCCEEDED:Ljavafx/concurrent/Worker$State;

    invoke-direct {v9, v10}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateState(Ljavafx/concurrent/Worker$State;)V

    .line 1135
    goto :goto_1

    .line 1137
    :sswitch_3
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    const-string v10, "Loading failed"

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 1138
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v10, v0

    move v11, v8

    invoke-direct {v10, v11}, Ljavafx/scene/web/WebEngine$LoadWorker;->describeError(I)Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1139
    move-object v9, v0

    sget-object v10, Ljavafx/concurrent/Worker$State;->FAILED:Ljavafx/concurrent/Worker$State;

    invoke-direct {v9, v10}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateState(Ljavafx/concurrent/Worker$State;)V

    .line 1140
    goto/16 :goto_1

    .line 1142
    :sswitch_4
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    const-string v10, "Loading stopped"

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 1143
    move-object v9, v0

    sget-object v10, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    invoke-direct {v9, v10}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateState(Ljavafx/concurrent/Worker$State;)V

    .line 1144
    goto/16 :goto_1

    .line 1146
    :sswitch_5
    move-object v9, v0

    move-wide v10, v6

    invoke-direct {v9, v10, v11}, Ljavafx/scene/web/WebEngine$LoadWorker;->updateProgress(D)V

    .line 1147
    goto/16 :goto_1

    .line 1149
    :sswitch_6
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v9}, Ljavafx/scene/web/WebEngine;->access$1800(Ljavafx/scene/web/WebEngine;)V

    .line 1150
    goto/16 :goto_1

    .line 1152
    :sswitch_7
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/web/WebEngine$LoadWorker;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v9}, Ljavafx/scene/web/WebEngine;->access$1900(Ljavafx/scene/web/WebEngine;)Ljavafx/scene/web/WebEngine$DocumentProperty;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Ljavafx/scene/web/WebEngine$DocumentProperty;->access$300(Ljavafx/scene/web/WebEngine$DocumentProperty;Z)V

    goto/16 :goto_1

    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0xb -> :sswitch_6
        0xe -> :sswitch_7
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method private updateProgress(D)V
    .locals 9

    .prologue
    .line 1062
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-wide v1, p1

    .local v1, "p":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->totalWorkToBeDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 1063
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->workDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 1064
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine$LoadWorker;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 1065
    return-void
.end method

.method private updateState(Ljavafx/concurrent/Worker$State;)V
    .locals 5

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, p1

    .local v1, "value":Ljavafx/concurrent/Worker$State;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 1023
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$LoadWorker;->state:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1024
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine$LoadWorker;->running:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v3, v1

    sget-object v4, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    sget-object v4, Ljavafx/concurrent/Worker$State;->RUNNING:Ljavafx/concurrent/Worker$State;

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 1025
    return-void

    .line 1024
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 1093
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebEngine$LoadWorker;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->this$0:Ljavafx/scene/web/WebEngine;

    invoke-static {v1}, Ljavafx/scene/web/WebEngine;->access$1500(Ljavafx/scene/web/WebEngine;)V

    .line 1095
    const/4 v1, 0x1

    move v0, v1

    .line 1097
    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final exceptionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 1038
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final getProgress()D
    .locals 3

    .prologue
    .line 1059
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-wide v0
.end method

.method public final getState()Ljavafx/concurrent/Worker$State;
    .locals 2

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->state:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/concurrent/Worker$State;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1085
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->title:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final getTotalWork()D
    .locals 3

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->totalWorkToBeDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-wide v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebEngine$LoadWorker;->getValue()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final getValue()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->value:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final getWorkDone()D
    .locals 3

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->workDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-wide v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->running:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return v0
.end method

.method public final messageProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->message:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyStringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final progressProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final runningProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->running:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final stateProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/concurrent/Worker$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->state:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final titleProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->title:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyStringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final totalWorkProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 1053
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->totalWorkToBeDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final valueProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->value:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method

.method public final workDoneProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 1046
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$LoadWorker;->workDone:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$LoadWorker;
    return-object v0
.end method
