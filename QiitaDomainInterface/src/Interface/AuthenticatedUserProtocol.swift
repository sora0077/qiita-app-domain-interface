//
//  AuthenticatedUserProtocol.swift
//  QiitaInfra
//
//  Created by 林達也 on 2015/11/23.
//  Copyright © 2015年 jp.sora0077. All rights reserved.
//

import Foundation
import BrightFutures

public protocol AuthenticatedUserRepository {
    
    var cache: AuthenticatedUserProtocol? { get }
    
    var future: Future<AuthenticatedUserProtocol?, QiitaInfraError> { get }
}

/**
 *  現在のアクセストークンで認証中のユーザを表します。通常のユーザ情報よりも詳細な情報を含んでいます。
 */
public protocol AuthenticatedUserProtocol {
    
    /// 自己紹介文
    /// example: Hello, world.
    var description_qiita: String? { get }
    
    /// Facebook ID
    /// example: yaotti
    var facebook_id: String? { get }
    
    /// このユーザがフォローしているユーザの数
    /// example: 100
    var followees_count: Int { get }
    
    /// このユーザをフォローしているユーザの数
    /// example: 200
    var followers_count: Int { get }
    
    /// GitHub ID
    /// example: yaotti
    var github_login_name: String? { get }
    
    /// ユーザID
    /// example: yaotti
    var id: String { get }
    
    /// このユーザが qiita.com 上で公開している投稿の数 (Qiita:Teamでの投稿数は含まれません)
    /// example: 300
    var items_count: Int { get }
    
    /// LinkedIn ID
    /// example: yaotti
    var linkedin_id: String? { get }
    
    /// 居住地
    /// example: Tokyo, Japan
    var location: String? { get }
    
    /// 設定している名前
    /// example: Hiroshige Umino
    var name: String? { get }
    
    /// 所属している組織
    /// example: Increments Inc
    var organization: String? { get }
    
    /// ユーザごとに割り当てられる整数のID
    /// example: 1
    var permanent_id: Int { get }
    
    /// 設定しているプロフィール画像のURL
    /// example: https://si0.twimg.com/profile_images/2309761038/1ijg13pfs0dg84sk2y0h_normal.jpeg
    var profile_image_url: String { get }
    
    /// Twitterのスクリーンネーム
    /// example: yaotti
    var twitter_screen_name: String? { get }
    
    /// 設定しているWebサイトのURL
    /// example: http://yaotti.hatenablog.com
    var website_url: String? { get }
    
    /// 1ヶ月あたりにQiitaにアップロードできる画像の総容量
    /// example: 1048576
    var image_monthly_upload_limit: Int { get }
    
    /// その月にQiitaにアップロードできる画像の残りの容量
    /// example: 524288
    var image_monthly_upload_remaining: Int { get }
    
    /// Qiita:Team専用モードに設定されているかどうか
    var team_only: Bool { get }
    
}
