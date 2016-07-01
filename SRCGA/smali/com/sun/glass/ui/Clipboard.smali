.class public Lcom/sun/glass/ui/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# static fields
.field public static final ACTION_ANY:I = 0x4fffffff

.field public static final ACTION_COPY:I = 0x1

.field public static final ACTION_COPY_OR_MOVE:I = 0x3

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_REFERENCE:I = 0x40000000

.field public static final DND:Ljava/lang/String; = "DND"

.field public static final DRAG_IMAGE:Ljava/lang/String; = "application/x-java-drag-image"

.field public static final DRAG_IMAGE_OFFSET:Ljava/lang/String; = "application/x-java-drag-image-offset"

.field public static final FILE_LIST_TYPE:Ljava/lang/String; = "application/x-java-file-list"

.field public static final HTML_TYPE:Ljava/lang/String; = "text/html"

.field public static final IE_URL_SHORTCUT_FILENAME:Ljava/lang/String; = "text/ie-shortcut-filename"

.field public static final RAW_IMAGE_TYPE:Ljava/lang/String; = "application/x-java-rawimage"

.field public static final RTF_TYPE:Ljava/lang/String; = "text/rtf"

.field public static final SELECTION:Ljava/lang/String; = "SELECTION"

.field public static final SYSTEM:Ljava/lang/String; = "SYSTEM"

.field public static final TEXT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final URI_TYPE:Ljava/lang/String; = "text/uri-list"

.field private static final clipboards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/glass/ui/Clipboard;",
            ">;"
        }
    .end annotation
.end field

.field private static final delegate:Lcom/sun/glass/ui/delegate/ClipboardDelegate;


# instance fields
.field private final assistants:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sun/glass/ui/ClipboardAssistance;",
            ">;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

.field private final localDataProtector:Ljava/lang/Object;

.field private localSharedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field protected supportedActions:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    .line 69
    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/PlatformFactory;->createClipboardDelegate()Lcom/sun/glass/ui/delegate/ClipboardDelegate;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/Clipboard;->delegate:Lcom/sun/glass/ui/delegate/ClipboardDelegate;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    .line 73
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    .line 80
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/glass/ui/Clipboard;->supportedActions:I

    .line 83
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 84
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Clipboard;->name:Ljava/lang/String;

    .line 85
    return-void
.end method

.method protected static get(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;
    .locals 8

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "clipboardName":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 214
    sget-object v4, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 215
    :try_start_0
    sget-object v4, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 216
    sget-object v4, Lcom/sun/glass/ui/Clipboard;->delegate:Lcom/sun/glass/ui/delegate/ClipboardDelegate;

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/sun/glass/ui/delegate/ClipboardDelegate;->createClipboard(Ljava/lang/String;)Lcom/sun/glass/ui/Clipboard;

    move-result-object v4

    move-object v2, v4

    .line 217
    .local v2, "newClipboard":Lcom/sun/glass/ui/Clipboard;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 218
    new-instance v4, Lcom/sun/glass/ui/Clipboard;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/Clipboard;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 220
    :cond_0
    sget-object v4, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    move-object v5, v0

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 222
    .end local v2    # "newClipboard":Lcom/sun/glass/ui/Clipboard;
    :cond_1
    sget-object v4, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/Clipboard;

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "clipboardName":Ljava/lang/String;
    return-object v0

    .line 223
    .restart local v0    # "clipboardName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public static getActionString(I)Ljava/lang/String;
    .locals 10

    .prologue
    .line 253
    move v0, p0

    .local v0, "action":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 255
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v2, v5

    .line 259
    .local v2, "test":[I
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "copy"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string v8, "move"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    const-string v8, "link"

    aput-object v8, v6, v7

    move-object v3, v5

    .line 263
    .local v3, "canDo":[Ljava/lang/String;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 264
    move-object v5, v2

    move v6, v4

    aget v5, v5, v6

    move v6, v0

    and-int/2addr v5, v6

    if-lez v5, :cond_1

    .line 265
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 266
    move-object v5, v1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 268
    :cond_0
    move-object v5, v1

    move-object v6, v3

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 263
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "action":I
    return-object v0

    .line 255
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x40000000    # 2.0f
    .end array-data
.end method


# virtual methods
.method public actionPerformed(I)V
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move v1, p1

    .local v1, "action":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 171
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 172
    const/4 v4, 0x0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eq v4, v5, :cond_0

    .line 173
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/ClipboardAssistance;->actionPerformed(I)V

    .line 175
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public add(Lcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move-object v1, p1

    .local v1, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 89
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 90
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 91
    move-object v4, v2

    monitor-exit v4

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method protected close()V
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 242
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 243
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, v3, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 244
    move-object v3, v1

    monitor-exit v3

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public contentChanged()V
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 156
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 157
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    move-object v1, v4

    .line 158
    .local v1, "_assistants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sun/glass/ui/ClipboardAssistance;>;"
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/ClipboardAssistance;

    move-object v3, v4

    .line 160
    .local v3, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/glass/ui/ClipboardAssistance;->contentChanged()V

    .line 161
    goto :goto_0

    .line 158
    .end local v1    # "_assistants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sun/glass/ui/ClipboardAssistance;>;"
    .end local v3    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4

    .line 162
    .restart local v1    # "_assistants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sun/glass/ui/ClipboardAssistance;>;"
    :cond_0
    return-void
.end method

.method public flush(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/glass/ui/ClipboardAssistance;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move-object v1, p1

    .local v1, "dataSource":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v2, p2

    .local v2, "cacheData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move v3, p3

    .local v3, "supportedActions":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 139
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/glass/ui/Clipboard;->setSharedData(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V

    .line 140
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/Clipboard;->contentChanged()V

    .line 141
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 181
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v2, v6

    monitor-enter v5

    .line 182
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 183
    const/4 v5, 0x0

    move-object v6, v2

    monitor-exit v6

    move-object v0, v5

    .line 187
    .end local v0    # "this":Lcom/sun/glass/ui/Clipboard;
    :goto_0
    return-object v0

    .line 185
    .restart local v0    # "this":Lcom/sun/glass/ui/Clipboard;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 186
    .local v3, "ret":Ljava/lang/Object;
    move-object v5, v3

    instance-of v5, v5, Lcom/sun/glass/ui/DelayedCallback;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/sun/glass/ui/DelayedCallback;

    .line 187
    invoke-interface {v5}, Lcom/sun/glass/ui/DelayedCallback;->providedData()Ljava/lang/Object;

    move-result-object v5

    :goto_1
    move-object v6, v2

    monitor-exit v6

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v3

    goto :goto_1

    .line 189
    .end local v3    # "ret":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 194
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v1, v9

    monitor-enter v8

    .line 195
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 196
    const/4 v8, 0x0

    move-object v9, v1

    monitor-exit v9

    move-object v0, v8

    .line 204
    .end local v0    # "this":Lcom/sun/glass/ui/Clipboard;
    .local v2, "mimes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "ret":[Ljava/lang/String;
    .local v4, "i":I
    :goto_0
    return-object v0

    .line 198
    .end local v2    # "mimes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "ret":[Ljava/lang/String;
    .end local v4    # "i":I
    .restart local v0    # "this":Lcom/sun/glass/ui/Clipboard;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    move-object v2, v8

    .line 199
    .restart local v2    # "mimes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    move-object v3, v8

    .line 200
    .restart local v3    # "ret":[Ljava/lang/String;
    const/4 v8, 0x0

    move v4, v8

    .line 201
    .restart local v4    # "i":I
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 202
    .local v6, "mime":Ljava/lang/String;
    move-object v8, v3

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v6

    aput-object v10, v8, v9

    .line 203
    goto :goto_1

    .line 204
    .end local v6    # "mime":Ljava/lang/String;
    :cond_1
    move-object v8, v3

    move-object v9, v1

    monitor-exit v9

    move-object v0, v8

    goto :goto_0

    .line 205
    .end local v2    # "mimes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "ret":[Ljava/lang/String;
    .end local v4    # "i":I
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 249
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Clipboard;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Clipboard;
    return-object v0
.end method

.method public getPixelsForRawImage([B)Lcom/sun/glass/ui/Pixels;
    .locals 10

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move-object v1, p1

    .local v1, "rawimage":[B
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 228
    move-object v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v6, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v2, v6

    .line 229
    .local v2, "size":Ljava/nio/ByteBuffer;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    move v3, v6

    .line 230
    .local v3, "width":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    move v4, v6

    .line 232
    .local v4, "height":I
    move-object v6, v1

    const/16 v7, 0x8

    move-object v8, v1

    array-length v8, v8

    const/16 v9, 0x8

    add-int/lit8 v8, v8, -0x8

    invoke-static {v6, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v5, v6

    .line 233
    .local v5, "pixels":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v6

    move v7, v3

    move v8, v4

    move-object v9, v5

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/Clipboard;
    return-object v0
.end method

.method public getSupportedSourceActions()I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 145
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Clipboard;->supportedActions:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Clipboard;
    return v0
.end method

.method public remove(Lcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 9

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move-object v1, p1

    .local v1, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 96
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    monitor-enter v6

    .line 97
    move-object v6, v1

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    if-ne v6, v7, :cond_0

    .line 98
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 100
    :cond_0
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v3, v7

    monitor-enter v6

    .line 103
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 104
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Clipboard;->assistants:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    move v2, v6

    .line 105
    .local v2, "needClose":Z
    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    move v6, v2

    if-eqz v6, :cond_1

    .line 108
    sget-object v6, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v3, v7

    monitor-enter v6

    .line 109
    :try_start_2
    sget-object v6, Lcom/sun/glass/ui/Clipboard;->clipboards:Ljava/util/Map;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/Clipboard;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 110
    move-object v6, v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/Clipboard;->close()V

    .line 113
    :cond_1
    return-void

    .line 100
    .end local v2    # "needClose":Z
    :catchall_0
    move-exception v6

    move-object v3, v6

    move-object v6, v2

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v3

    throw v6

    .line 105
    :catchall_1
    move-exception v6

    move-object v4, v6

    move-object v6, v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v4

    throw v6

    .line 110
    .restart local v2    # "needClose":Z
    :catchall_2
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v6, v5

    throw v6
.end method

.method protected setSharedData(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/glass/ui/ClipboardAssistance;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move-object v1, p1

    .local v1, "dataSource":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v2, p2

    .local v2, "cacheData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move v3, p3

    .local v3, "supportedActions":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 121
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Clipboard;->localDataProtector:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v4, v7

    monitor-enter v6

    .line 122
    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-virtual {v7}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v6, Lcom/sun/glass/ui/Clipboard;->localSharedData:Ljava/util/HashMap;

    .line 123
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/glass/ui/Clipboard;->supportedActions:I

    .line 124
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/glass/ui/Clipboard;->dataSource:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 125
    move-object v6, v4

    monitor-exit v6

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public setTargetAction(I)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    move v1, p1

    .local v1, "actionDone":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 150
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Clipboard;->actionPerformed(I)V

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Clipboard;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clipboard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Clipboard;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Clipboard;
    return-object v0
.end method
